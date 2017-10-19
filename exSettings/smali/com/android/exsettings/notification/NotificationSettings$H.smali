.class final Lcom/android/exsettings/notification/NotificationSettings$H;
.super Landroid/os/Handler;
.source "NotificationSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/notification/NotificationSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/notification/NotificationSettings;


# direct methods
.method private constructor <init>(Lcom/android/exsettings/notification/NotificationSettings;)V
    .locals 1

    .prologue
    .line 689
    iput-object p1, p0, Lcom/android/exsettings/notification/NotificationSettings$H;->this$0:Lcom/android/exsettings/notification/NotificationSettings;

    .line 690
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 691
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/exsettings/notification/NotificationSettings;Lcom/android/exsettings/notification/NotificationSettings$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/exsettings/notification/NotificationSettings;
    .param p2, "x1"    # Lcom/android/exsettings/notification/NotificationSettings$1;

    .prologue
    .line 682
    invoke-direct {p0, p1}, Lcom/android/exsettings/notification/NotificationSettings$H;-><init>(Lcom/android/exsettings/notification/NotificationSettings;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 695
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 720
    :goto_0
    return-void

    .line 698
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 699
    .local v0, "subId":I
    iget-object v1, p0, Lcom/android/exsettings/notification/NotificationSettings$H;->this$0:Lcom/android/exsettings/notification/NotificationSettings;

    # getter for: Lcom/android/exsettings/notification/NotificationSettings;->mSim1PhoneRingtonePreference:Lcom/android/exsettings/DefaultRingtonePreference;
    invoke-static {v1}, Lcom/android/exsettings/notification/NotificationSettings;->access$700(Lcom/android/exsettings/notification/NotificationSettings;)Lcom/android/exsettings/DefaultRingtonePreference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/exsettings/DefaultRingtonePreference;->getSubId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 700
    iget-object v1, p0, Lcom/android/exsettings/notification/NotificationSettings$H;->this$0:Lcom/android/exsettings/notification/NotificationSettings;

    # getter for: Lcom/android/exsettings/notification/NotificationSettings;->mSim1PhoneRingtonePreference:Lcom/android/exsettings/DefaultRingtonePreference;
    invoke-static {v1}, Lcom/android/exsettings/notification/NotificationSettings;->access$700(Lcom/android/exsettings/notification/NotificationSettings;)Lcom/android/exsettings/DefaultRingtonePreference;

    move-result-object v2

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v2, v1}, Lcom/android/exsettings/DefaultRingtonePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 705
    :goto_1
    iget-object v1, p0, Lcom/android/exsettings/notification/NotificationSettings$H;->this$0:Lcom/android/exsettings/notification/NotificationSettings;

    # getter for: Lcom/android/exsettings/notification/NotificationSettings;->mPhoneRingtonePreference:Landroid/preference/Preference;
    invoke-static {v1}, Lcom/android/exsettings/notification/NotificationSettings;->access$400(Lcom/android/exsettings/notification/NotificationSettings;)Landroid/preference/Preference;

    move-result-object v2

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 702
    :cond_0
    iget-object v1, p0, Lcom/android/exsettings/notification/NotificationSettings$H;->this$0:Lcom/android/exsettings/notification/NotificationSettings;

    # getter for: Lcom/android/exsettings/notification/NotificationSettings;->mSim2PhoneRingtonePreference:Lcom/android/exsettings/DefaultRingtonePreference;
    invoke-static {v1}, Lcom/android/exsettings/notification/NotificationSettings;->access$800(Lcom/android/exsettings/notification/NotificationSettings;)Lcom/android/exsettings/DefaultRingtonePreference;

    move-result-object v2

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v2, v1}, Lcom/android/exsettings/DefaultRingtonePreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 708
    .end local v0    # "subId":I
    :pswitch_1
    iget-object v1, p0, Lcom/android/exsettings/notification/NotificationSettings$H;->this$0:Lcom/android/exsettings/notification/NotificationSettings;

    # getter for: Lcom/android/exsettings/notification/NotificationSettings;->mNotificationRingtonePreference:Landroid/preference/Preference;
    invoke-static {v1}, Lcom/android/exsettings/notification/NotificationSettings;->access$900(Lcom/android/exsettings/notification/NotificationSettings;)Landroid/preference/Preference;

    move-result-object v2

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 711
    :pswitch_2
    iget-object v1, p0, Lcom/android/exsettings/notification/NotificationSettings$H;->this$0:Lcom/android/exsettings/notification/NotificationSettings;

    # getter for: Lcom/android/exsettings/notification/NotificationSettings;->mVolumeCallback:Lcom/android/exsettings/notification/NotificationSettings$VolumePreferenceCallback;
    invoke-static {v1}, Lcom/android/exsettings/notification/NotificationSettings;->access$1900(Lcom/android/exsettings/notification/NotificationSettings;)Lcom/android/exsettings/notification/NotificationSettings$VolumePreferenceCallback;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/exsettings/notification/NotificationSettings$VolumePreferenceCallback;->stopSample()V

    goto :goto_0

    .line 714
    :pswitch_3
    iget-object v1, p0, Lcom/android/exsettings/notification/NotificationSettings$H;->this$0:Lcom/android/exsettings/notification/NotificationSettings;

    # invokes: Lcom/android/exsettings/notification/NotificationSettings;->updateEffectsSuppressor()V
    invoke-static {v1}, Lcom/android/exsettings/notification/NotificationSettings;->access$2000(Lcom/android/exsettings/notification/NotificationSettings;)V

    goto :goto_0

    .line 717
    :pswitch_4
    iget-object v1, p0, Lcom/android/exsettings/notification/NotificationSettings$H;->this$0:Lcom/android/exsettings/notification/NotificationSettings;

    # invokes: Lcom/android/exsettings/notification/NotificationSettings;->updateRingerMode()V
    invoke-static {v1}, Lcom/android/exsettings/notification/NotificationSettings;->access$2100(Lcom/android/exsettings/notification/NotificationSettings;)V

    goto :goto_0

    .line 695
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
