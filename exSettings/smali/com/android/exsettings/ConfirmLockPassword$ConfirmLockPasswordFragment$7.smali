.class Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment$7;
.super Ljava/lang/Object;
.source "ConfirmLockPassword.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;
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
    .line 484
    iput-object p1, p0, Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment$7;->this$0:Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 486
    iget-object v0, p0, Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment$7;->this$0:Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    # getter for: Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mErrorTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->access$1100(Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 487
    return-void
.end method
