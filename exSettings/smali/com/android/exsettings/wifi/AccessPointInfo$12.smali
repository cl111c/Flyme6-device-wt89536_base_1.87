.class Lcom/android/exsettings/wifi/AccessPointInfo$12;
.super Ljava/lang/Object;
.source "AccessPointInfo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/wifi/AccessPointInfo;->afterTextChanged(Landroid/text/Editable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/wifi/AccessPointInfo;


# direct methods
.method constructor <init>(Lcom/android/exsettings/wifi/AccessPointInfo;)V
    .locals 0

    .prologue
    .line 2235
    iput-object p1, p0, Lcom/android/exsettings/wifi/AccessPointInfo$12;->this$0:Lcom/android/exsettings/wifi/AccessPointInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2237
    iget-object v0, p0, Lcom/android/exsettings/wifi/AccessPointInfo$12;->this$0:Lcom/android/exsettings/wifi/AccessPointInfo;

    # getter for: Lcom/android/exsettings/wifi/AccessPointInfo;->mJoin:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/exsettings/wifi/AccessPointInfo;->access$1600(Lcom/android/exsettings/wifi/AccessPointInfo;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exsettings/wifi/AccessPointInfo$12;->this$0:Lcom/android/exsettings/wifi/AccessPointInfo;

    # invokes: Lcom/android/exsettings/wifi/AccessPointInfo;->ipAndProxyFieldsAreValid()Z
    invoke-static {v1}, Lcom/android/exsettings/wifi/AccessPointInfo;->access$1500(Lcom/android/exsettings/wifi/AccessPointInfo;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2238
    return-void
.end method
