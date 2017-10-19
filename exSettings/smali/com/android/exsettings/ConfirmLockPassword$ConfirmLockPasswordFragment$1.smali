.class Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment$1;
.super Ljava/lang/Object;
.source "ConfirmLockPassword.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->startEnterAnimation()V
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
    .line 236
    iput-object p1, p0, Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment$1;->this$0:Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 239
    iget-object v0, p0, Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment$1;->this$0:Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    const/4 v1, 0x0

    # setter for: Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mBlockImm:Z
    invoke-static {v0, v1}, Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->access$102(Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;Z)Z

    .line 240
    iget-object v0, p0, Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment$1;->this$0:Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    # invokes: Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->resetState()V
    invoke-static {v0}, Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->access$200(Lcom/android/exsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;)V

    .line 241
    return-void
.end method
