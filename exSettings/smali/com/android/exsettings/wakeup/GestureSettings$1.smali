.class Lcom/android/exsettings/wakeup/GestureSettings$1;
.super Ljava/lang/Object;
.source "GestureSettings.java"

# interfaces
.implements Lcom/android/exsettings/QuickSwitchPreference$OnSwitchCaughtListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/wakeup/GestureSettings;->initPreference()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/wakeup/GestureSettings;


# direct methods
.method constructor <init>(Lcom/android/exsettings/wakeup/GestureSettings;)V
    .locals 0

    .prologue
    .line 202
    iput-object p1, p0, Lcom/android/exsettings/wakeup/GestureSettings$1;->this$0:Lcom/android/exsettings/wakeup/GestureSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSwitchCaught(Landroid/widget/Switch;)Z
    .locals 4
    .param p1, "paramSwitch"    # Landroid/widget/Switch;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 204
    if-eqz p1, :cond_1

    .line 208
    iget-object v2, p0, Lcom/android/exsettings/wakeup/GestureSettings$1;->this$0:Lcom/android/exsettings/wakeup/GestureSettings;

    # invokes: Lcom/android/exsettings/wakeup/GestureSettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/android/exsettings/wakeup/GestureSettings;->access$000(Lcom/android/exsettings/wakeup/GestureSettings;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "tct_alarm_turnover_enable"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_0

    move v0, v1

    :cond_0
    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 210
    new-instance v0, Lcom/android/exsettings/wakeup/GestureSettings$1$1;

    invoke-direct {v0, p0}, Lcom/android/exsettings/wakeup/GestureSettings$1$1;-><init>(Lcom/android/exsettings/wakeup/GestureSettings$1;)V

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 222
    :cond_1
    return v1
.end method
