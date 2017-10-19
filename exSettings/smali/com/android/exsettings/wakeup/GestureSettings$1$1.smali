.class Lcom/android/exsettings/wakeup/GestureSettings$1$1;
.super Ljava/lang/Object;
.source "GestureSettings.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/wakeup/GestureSettings$1;->onSwitchCaught(Landroid/widget/Switch;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/exsettings/wakeup/GestureSettings$1;


# direct methods
.method constructor <init>(Lcom/android/exsettings/wakeup/GestureSettings$1;)V
    .locals 0

    .prologue
    .line 210
    iput-object p1, p0, Lcom/android/exsettings/wakeup/GestureSettings$1$1;->this$1:Lcom/android/exsettings/wakeup/GestureSettings$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v1, 0x0

    .line 212
    if-eqz p2, :cond_1

    const/4 v0, 0x1

    .line 215
    .local v0, "val":I
    :goto_0
    iget-object v2, p0, Lcom/android/exsettings/wakeup/GestureSettings$1$1;->this$1:Lcom/android/exsettings/wakeup/GestureSettings$1;

    iget-object v2, v2, Lcom/android/exsettings/wakeup/GestureSettings$1;->this$0:Lcom/android/exsettings/wakeup/GestureSettings;

    # invokes: Lcom/android/exsettings/wakeup/GestureSettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/android/exsettings/wakeup/GestureSettings;->access$100(Lcom/android/exsettings/wakeup/GestureSettings;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "tct_alarm_turnover_enable"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 217
    iget-object v2, p0, Lcom/android/exsettings/wakeup/GestureSettings$1$1;->this$1:Lcom/android/exsettings/wakeup/GestureSettings$1;

    iget-object v2, v2, Lcom/android/exsettings/wakeup/GestureSettings$1;->this$0:Lcom/android/exsettings/wakeup/GestureSettings;

    # getter for: Lcom/android/exsettings/wakeup/GestureSettings;->settings:Landroid/content/SharedPreferences;
    invoke-static {v2}, Lcom/android/exsettings/wakeup/GestureSettings;->access$200(Lcom/android/exsettings/wakeup/GestureSettings;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "alarm_auto_mute"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p2, :cond_0

    .line 218
    iget-object v1, p0, Lcom/android/exsettings/wakeup/GestureSettings$1$1;->this$1:Lcom/android/exsettings/wakeup/GestureSettings$1;

    iget-object v1, v1, Lcom/android/exsettings/wakeup/GestureSettings$1;->this$0:Lcom/android/exsettings/wakeup/GestureSettings;

    const/16 v2, 0x16

    # invokes: Lcom/android/exsettings/wakeup/GestureSettings;->showGestureDialog(I)V
    invoke-static {v1, v2}, Lcom/android/exsettings/wakeup/GestureSettings;->access$300(Lcom/android/exsettings/wakeup/GestureSettings;I)V

    .line 220
    :cond_0
    return-void

    .end local v0    # "val":I
    :cond_1
    move v0, v1

    .line 212
    goto :goto_0
.end method
