import numpy as np

def img_tag(clazz, counter):
    return "<img width='100px'' src=\"images/" + clazz + "_" + str(counter) + ".jpeg\">"

classes = ["nature", "people"]
cnt = [0, 0]
correct = [[], []]
incorrect = [[], []]

predicted_labels = np.loadtxt(open("prediction.txt", "rb"), dtype=np.int).clip(0)
true_labels = np.loadtxt(open("true_labels.txt", "rb"), dtype=np.int).clip(0)

for predicted_label, true_label in zip(predicted_labels, true_labels):
    cnt[true_label] += 1
    img_html = img_tag(classes[true_label], cnt[true_label])
    if predicted_label == true_label:
        correct[predicted_label].append(img_html)
    else:
        incorrect[predicted_label].append(img_html)

num_errors = np.sum(abs(predicted_labels - true_labels))
accuracy = 100.0 - (100.0 * num_errors / len(predicted_labels))

with open("template.html", "r") as inf:
    with open("results.html", "wb") as out:
        html_out = inf.read()
        html_out = html_out.replace("class_0_correct", "\n".join(correct[0]))
        html_out = html_out.replace("class_1_correct", "\n".join(correct[1]))
        html_out = html_out.replace("class_0_incorrect", "\n".join(incorrect[0]))
        html_out = html_out.replace("class_1_incorrect", "\n".join(incorrect[1]))
        out.write(html_out)

print "Classification accuracy: " + str(accuracy) + "%"
print "Check it visually by opening results.html"
