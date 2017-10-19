.class Lcom/android/exsettings/applications/ManageApplications$2;
.super Ljava/util/TimerTask;
.source "ManageApplications.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/applications/ManageApplications;->showInputmethod()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/applications/ManageApplications;


# direct methods
.method constructor <init>(Lcom/android/exsettings/applications/ManageApplications;)V
    .locals 0

    .prologue
    .line 771
    iput-object p1, p0, Lcom/android/exsettings/applications/ManageApplications$2;->this$0:Lcom/android/exsettings/applications/ManageApplications;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 773
    iget-object v1, p0, Lcom/android/exsettings/applications/ManageApplications$2;->this$0:Lcom/android/exsettings/applications/ManageApplications;

    iget-object v1, v1, Lcom/android/exsettings/applications/ManageApplications;->mTextView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 775
    .local v0, "inputManager":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/android/exsettings/applications/ManageApplications$2;->this$0:Lcom/android/exsettings/applications/ManageApplications;

    iget-object v1, v1, Lcom/android/exsettings/applications/ManageApplications;->mTextView:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 776
    return-void
.end method
