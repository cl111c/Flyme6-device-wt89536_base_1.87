.class Lcom/android/exsettings/DataEnabler$4;
.super Landroid/database/ContentObserver;
.source "DataEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/DataEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/DataEnabler;


# direct methods
.method constructor <init>(Lcom/android/exsettings/DataEnabler;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 217
    iput-object p1, p0, Lcom/android/exsettings/DataEnabler$4;->this$0:Lcom/android/exsettings/DataEnabler;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 220
    iget-object v0, p0, Lcom/android/exsettings/DataEnabler$4;->this$0:Lcom/android/exsettings/DataEnabler;

    iget-object v1, p0, Lcom/android/exsettings/DataEnabler$4;->this$0:Lcom/android/exsettings/DataEnabler;

    # getter for: Lcom/android/exsettings/DataEnabler;->mConnService:Landroid/net/ConnectivityManager;
    invoke-static {v1}, Lcom/android/exsettings/DataEnabler;->access$300(Lcom/android/exsettings/DataEnabler;)Landroid/net/ConnectivityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    # setter for: Lcom/android/exsettings/DataEnabler;->mMobileDataEnabled:Ljava/lang/Boolean;
    invoke-static {v0, v1}, Lcom/android/exsettings/DataEnabler;->access$202(Lcom/android/exsettings/DataEnabler;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 221
    iget-object v0, p0, Lcom/android/exsettings/DataEnabler$4;->this$0:Lcom/android/exsettings/DataEnabler;

    # getter for: Lcom/android/exsettings/DataEnabler;->mSwitch:Landroid/widget/Switch;
    invoke-static {v0}, Lcom/android/exsettings/DataEnabler;->access$500(Lcom/android/exsettings/DataEnabler;)Landroid/widget/Switch;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exsettings/DataEnabler$4;->this$0:Lcom/android/exsettings/DataEnabler;

    # getter for: Lcom/android/exsettings/DataEnabler;->mMobileDataEnabled:Ljava/lang/Boolean;
    invoke-static {v1}, Lcom/android/exsettings/DataEnabler;->access$200(Lcom/android/exsettings/DataEnabler;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 222
    return-void
.end method
