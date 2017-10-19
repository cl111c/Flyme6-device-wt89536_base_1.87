.class Lcom/android/exsettings/DefaultMmsApp$AppArrayAdapter$1;
.super Ljava/lang/Object;
.source "DefaultMmsApp.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/DefaultMmsApp$AppArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/exsettings/DefaultMmsApp$AppArrayAdapter;

.field final synthetic val$checkedTextView:Landroid/widget/CheckedTextView;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/android/exsettings/DefaultMmsApp$AppArrayAdapter;ILandroid/widget/CheckedTextView;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lcom/android/exsettings/DefaultMmsApp$AppArrayAdapter$1;->this$1:Lcom/android/exsettings/DefaultMmsApp$AppArrayAdapter;

    iput p2, p0, Lcom/android/exsettings/DefaultMmsApp$AppArrayAdapter$1;->val$position:I

    iput-object p3, p0, Lcom/android/exsettings/DefaultMmsApp$AppArrayAdapter$1;->val$checkedTextView:Landroid/widget/CheckedTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/exsettings/DefaultMmsApp$AppArrayAdapter$1;->this$1:Lcom/android/exsettings/DefaultMmsApp$AppArrayAdapter;

    iget-object v0, v0, Lcom/android/exsettings/DefaultMmsApp$AppArrayAdapter;->this$0:Lcom/android/exsettings/DefaultMmsApp;

    # getter for: Lcom/android/exsettings/DefaultMmsApp;->packageNames:[Ljava/lang/String;
    invoke-static {v0}, Lcom/android/exsettings/DefaultMmsApp;->access$100(Lcom/android/exsettings/DefaultMmsApp;)[Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/android/exsettings/DefaultMmsApp$AppArrayAdapter$1;->val$position:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/android/exsettings/DefaultMmsApp$AppArrayAdapter$1;->this$1:Lcom/android/exsettings/DefaultMmsApp$AppArrayAdapter;

    iget-object v1, v1, Lcom/android/exsettings/DefaultMmsApp$AppArrayAdapter;->this$0:Lcom/android/exsettings/DefaultMmsApp;

    # getter for: Lcom/android/exsettings/DefaultMmsApp;->defaultPackageName:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/exsettings/DefaultMmsApp;->access$000(Lcom/android/exsettings/DefaultMmsApp;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 170
    :cond_0
    :goto_0
    return-void

    .line 165
    :cond_1
    iget-object v1, p0, Lcom/android/exsettings/DefaultMmsApp$AppArrayAdapter$1;->val$checkedTextView:Landroid/widget/CheckedTextView;

    iget-object v0, p0, Lcom/android/exsettings/DefaultMmsApp$AppArrayAdapter$1;->val$checkedTextView:Landroid/widget/CheckedTextView;

    invoke-virtual {v0}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 166
    iget-object v0, p0, Lcom/android/exsettings/DefaultMmsApp$AppArrayAdapter$1;->val$checkedTextView:Landroid/widget/CheckedTextView;

    invoke-virtual {v0}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/android/exsettings/DefaultMmsApp$AppArrayAdapter$1;->this$1:Lcom/android/exsettings/DefaultMmsApp$AppArrayAdapter;

    iget-object v0, v0, Lcom/android/exsettings/DefaultMmsApp$AppArrayAdapter;->this$0:Lcom/android/exsettings/DefaultMmsApp;

    # getter for: Lcom/android/exsettings/DefaultMmsApp;->packageNames:[Ljava/lang/String;
    invoke-static {v0}, Lcom/android/exsettings/DefaultMmsApp;->access$100(Lcom/android/exsettings/DefaultMmsApp;)[Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/android/exsettings/DefaultMmsApp$AppArrayAdapter$1;->val$position:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/android/exsettings/DefaultMmsApp$AppArrayAdapter$1;->this$1:Lcom/android/exsettings/DefaultMmsApp$AppArrayAdapter;

    iget-object v1, v1, Lcom/android/exsettings/DefaultMmsApp$AppArrayAdapter;->this$0:Lcom/android/exsettings/DefaultMmsApp;

    invoke-virtual {v1}, Lcom/android/exsettings/DefaultMmsApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/SmsApplication;->setDefaultApplication(Ljava/lang/String;Landroid/content/Context;)V

    .line 168
    iget-object v0, p0, Lcom/android/exsettings/DefaultMmsApp$AppArrayAdapter$1;->this$1:Lcom/android/exsettings/DefaultMmsApp$AppArrayAdapter;

    iget-object v0, v0, Lcom/android/exsettings/DefaultMmsApp$AppArrayAdapter;->this$0:Lcom/android/exsettings/DefaultMmsApp;

    invoke-virtual {v0}, Lcom/android/exsettings/DefaultMmsApp;->finish()V

    goto :goto_0

    .line 165
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method
