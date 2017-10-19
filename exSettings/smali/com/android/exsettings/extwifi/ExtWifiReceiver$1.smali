.class Lcom/android/exsettings/extwifi/ExtWifiReceiver$1;
.super Ljava/lang/Object;
.source "ExtWifiReceiver.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/extwifi/ExtWifiReceiver;->showDialogInAirplaneMode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/extwifi/ExtWifiReceiver;


# direct methods
.method constructor <init>(Lcom/android/exsettings/extwifi/ExtWifiReceiver;)V
    .locals 0

    .prologue
    .line 330
    iput-object p1, p0, Lcom/android/exsettings/extwifi/ExtWifiReceiver$1;->this$0:Lcom/android/exsettings/extwifi/ExtWifiReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 332
    iget-object v0, p0, Lcom/android/exsettings/extwifi/ExtWifiReceiver$1;->this$0:Lcom/android/exsettings/extwifi/ExtWifiReceiver;

    # getter for: Lcom/android/exsettings/extwifi/ExtWifiReceiver;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/exsettings/extwifi/ExtWifiReceiver;->access$000(Lcom/android/exsettings/extwifi/ExtWifiReceiver;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_wlan_warning"

    if-eqz p2, :cond_0

    const/4 v0, -0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 335
    return-void

    .line 332
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
