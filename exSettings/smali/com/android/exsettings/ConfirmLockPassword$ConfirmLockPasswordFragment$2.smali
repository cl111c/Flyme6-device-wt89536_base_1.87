.class Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment$2;
.super Ljava/lang/Object;
.source "ConfirmLockPassword.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->onWindowFocusChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;


# direct methods
.method constructor <init>(Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;)V
    .locals 0

    .prologue
    .line 303
    iput-object p1, p0, Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment$2;->this$0:Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 306
    iget-object v0, p0, Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment$2;->this$0:Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    # invokes: Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->shouldAutoShowSoftKeyboard()Z
    invoke-static {v0}, Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->access$300(Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment$2;->this$0:Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    # invokes: Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->resetState()V
    invoke-static {v0}, Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->access$200(Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;)V

    .line 313
    :goto_0
    return-void

    .line 311
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment$2;->this$0:Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    # getter for: Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mImm:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v0}, Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->access$500(Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment$2;->this$0:Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    # getter for: Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->access$400(Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method
