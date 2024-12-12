import pandas as pd
import matplotlib.pyplot as plt

# خواندن داده‌ها
data = pd.read_csv('data.csv')

# رسم نمودار ستونی
data['column_name'].value_counts().plot(kind='bar')
plt.title('Bar Chart of Column Name')
plt.xlabel('Categories')
plt.ylabel('Counts')
plt.show()