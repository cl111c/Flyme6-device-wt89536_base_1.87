.class final Lcom/android/exsettings/notification/SoundSettings$H;
.super Landroid/os/Handler;
.source "SoundSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/notification/SoundSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/notification/SoundSettings;


# direct methods
.method private constructor <init>(Lcom/android/exsettings/notification/SoundSettings;)V
    .locals 1

    .prologue
    .line 776
    iput-object p1, p0, Lcom/android/exsettings/notification/SoundSettings$H;->this$0:Lcom/android/exsettings/notification/SoundSettings;

    .line 777
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 778
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/exsettings/notification/SoundSettings;Lcom/android/exsettings/notification/SoundSettings$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/exsettings/notification/SoundSettings;
    .param p2, "x1"    # Lcom/android/exsettings/notification/SoundSettings$1;

    .prologue
    .line 766
    invoke-direct {p0, p1}, Lcom/android/exsettings/notification/SoundSettings$H;-><init>(Lcom/android/exsettings/notification/SoundSettings;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 782
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 810
    :goto_0
    return-void

    .line 785
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 786
    .local v0, "subId":I
    iget-object v1, p0, Lcom/android/exsettings/notification/SoundSettings$H;->this$0:Lcom/android/exsettings/notification/SoundSettings;

    # getter for: Lcom/android/exsettings/notification/SoundSettings;->mSim1PhoneRingtonePreference:Lcom/android/exsettings/DefaultRingtonePreference;
    invoke-static {v1}, Lcom/android/exsettings/notification/SoundSettings;->access$900(Lcom/android/exsettings/notification/SoundSettings;)Lcom/android/exsettings/DefaultRingtonePreference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/exsettings/DefaultRingtonePreference;->getSubId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 787
    iget-object v1, p0, Lcom/android/exsettings/notification/SoundSettings$H;->this$0:Lcom/android/exsettings/notification/SoundSettings;

    # getter for: Lcom/android/exsettings/notification/SoundSettings;->mSim1PhoneRingtonePreference:Lcom/android/exsettings/DefaultRingtonePreference;
    invoke-static {v1}, Lcom/android/exsettings/notification/SoundSettings;->access$900(Lcom/android/exsettings/notification/SoundSettings;)Lcom/android/exsettings/DefaultRingtonePreference;

    move-result-object v2

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v2, v1}, Lcom/android/exsettings/DefaultRingtonePreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 789
    :cond_0
    iget-object v1, p0, Lcom/android/exsettings/notification/SoundSettings$H;->this$0:Lcom/android/exsettings/notification/SoundSettings;

    # getter for: Lcom/android/exsettings/notification/SoundSettings;->mSim2PhoneRingtonePreference:Lcom/android/exsettings/DefaultRingtonePreference;
    invoke-static {v1}, Lcom/android/exsettings/notification/SoundSettings;->access$1000(Lcom/android/exsettings/notification/SoundSettings;)Lcom/android/exsettings/DefaultRingtonePreference;

    move-result-object v2

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v2, v1}, Lcom/android/exsettings/DefaultRingtonePreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 795
    .end local v0    # "subId":I
    :pswitch_1
    iget-object v1, p0, Lcom/android/exsettings/notification/SoundSettings$H;->this$0:Lcom/android/exsettings/notification/SoundSettings;

    # getter for: Lcom/android/exsettings/notification/SoundSettings;->mNotificationRingtonePreference:Landroid/preference/Preference;
    invoke-static {v1}, Lcom/android/exsettings/notification/SoundSettings;->access$1100(Lcom/android/exsettings/notification/SoundSettings;)Landroid/preference/Preference;

    move-result-object v2

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 798
    :pswitch_2
    iget-object v1, p0, Lcom/android/exsettings/notification/SoundSettings$H;->this$0:Lcom/android/exsettings/notification/SoundSettings;

    # getter for: Lcom/android/exsettings/notification/SoundSettings;->mAlarmRingtonePreference:Landroid/preference/Preference;
    invoke-static {v1}, Lcom/android/exsettings/notification/SoundSettings;->access$1200(Lcom/android/exsettings/notification/SoundSettings;)Landroid/preference/Preference;

    move-result-object v2

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 801
    :pswitch_3
    iget-object v1, p0, Lcom/android/exsettings/notification/SoundSettings$H;->this$0:Lcom/android/exsettings/notification/SoundSettings;

    # getter for: Lcom/android/exsettings/notification/SoundSettings;->mVolumeCallback:Lcom/android/exsettings/notification/SoundSettings$VolumePreferenceCallback;
    invoke-static {v1}, Lcom/android/exsettings/notification/SoundSettings;->access$1600(Lcom/android/exsettings/notification/SoundSettings;)Lcom/android/exsettings/notification/SoundSettings$VolumePreferenceCallback;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/exsettings/notification/SoundSettings$VolumePreferenceCallback;->stopSample()V

    goto :goto_0

    .line 806
    :pswitch_4
    iget-object v1, p0, Lcom/android/exsettings/notification/SoundSettings$H;->this$0:Lcom/android/exsettings/notification/SoundSettings;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->what:I

    # invokes: Lcom/android/exsettings/notification/SoundSettings;->updateRingOrNotificationIcon(II)V
    invoke-static {v1, v2, v3}, Lcom/android/exsettings/notification/SoundSettings;->access$1700(Lcom/android/exsettings/notification/SoundSettings;II)V

    goto :goto_0

    .line 782
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method
