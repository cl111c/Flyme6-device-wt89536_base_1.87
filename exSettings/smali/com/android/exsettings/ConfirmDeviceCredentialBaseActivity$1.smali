.class Lcom/android/exsettings/ConfirmDeviceCredentialBaseActivity$1;
.super Ljava/lang/Object;
.source "ConfirmDeviceCredentialBaseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/ConfirmDeviceCredentialBaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/ConfirmDeviceCredentialBaseActivity;


# direct methods
.method constructor <init>(Lcom/android/exsettings/ConfirmDeviceCredentialBaseActivity;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/android/exsettings/ConfirmDeviceCredentialBaseActivity$1;->this$0:Lcom/android/exsettings/ConfirmDeviceCredentialBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/exsettings/ConfirmDeviceCredentialBaseActivity$1;->this$0:Lcom/android/exsettings/ConfirmDeviceCredentialBaseActivity;

    invoke-virtual {v0}, Lcom/android/exsettings/ConfirmDeviceCredentialBaseActivity;->onEnterAnimationComplete()V

    .line 120
    return-void
.end method
