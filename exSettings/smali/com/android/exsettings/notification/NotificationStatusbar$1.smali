.class Lcom/android/exsettings/notification/NotificationStatusbar$1;
.super Landroid/database/ContentObserver;
.source "NotificationStatusbar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/notification/NotificationStatusbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/notification/NotificationStatusbar;


# direct methods
.method constructor <init>(Lcom/android/exsettings/notification/NotificationStatusbar;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/exsettings/notification/NotificationStatusbar$1;->this$0:Lcom/android/exsettings/notification/NotificationStatusbar;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 79
    iget-object v2, p0, Lcom/android/exsettings/notification/NotificationStatusbar$1;->this$0:Lcom/android/exsettings/notification/NotificationStatusbar;

    # getter for: Lcom/android/exsettings/notification/NotificationStatusbar;->mNotDisturbSettings:Landroid/preference/SwitchPreference;
    invoke-static {v2}, Lcom/android/exsettings/notification/NotificationStatusbar;->access$100(Lcom/android/exsettings/notification/NotificationStatusbar;)Landroid/preference/SwitchPreference;

    move-result-object v2

    iget-object v3, p0, Lcom/android/exsettings/notification/NotificationStatusbar$1;->this$0:Lcom/android/exsettings/notification/NotificationStatusbar;

    # invokes: Lcom/android/exsettings/notification/NotificationStatusbar;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v3}, Lcom/android/exsettings/notification/NotificationStatusbar;->access$000(Lcom/android/exsettings/notification/NotificationStatusbar;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "phone_dnd"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v0, :cond_0

    :goto_0
    invoke-virtual {v2, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 81
    return-void

    :cond_0
    move v0, v1

    .line 79
    goto :goto_0
.end method
