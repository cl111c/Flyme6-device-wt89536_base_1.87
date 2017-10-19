.class final Lcom/android/exsettings/notification/PreferenceRingerVolume$H;
.super Landroid/os/Handler;
.source "PreferenceRingerVolume.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/notification/PreferenceRingerVolume;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/notification/PreferenceRingerVolume;


# direct methods
.method private constructor <init>(Lcom/android/exsettings/notification/PreferenceRingerVolume;)V
    .locals 1

    .prologue
    .line 304
    iput-object p1, p0, Lcom/android/exsettings/notification/PreferenceRingerVolume$H;->this$0:Lcom/android/exsettings/notification/PreferenceRingerVolume;

    .line 305
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 306
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/exsettings/notification/PreferenceRingerVolume;Lcom/android/exsettings/notification/PreferenceRingerVolume$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/exsettings/notification/PreferenceRingerVolume;
    .param p2, "x1"    # Lcom/android/exsettings/notification/PreferenceRingerVolume$1;

    .prologue
    .line 296
    invoke-direct {p0, p1}, Lcom/android/exsettings/notification/PreferenceRingerVolume$H;-><init>(Lcom/android/exsettings/notification/PreferenceRingerVolume;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 310
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 328
    :goto_0
    return-void

    .line 312
    :pswitch_0
    iget-object v0, p0, Lcom/android/exsettings/notification/PreferenceRingerVolume$H;->this$0:Lcom/android/exsettings/notification/PreferenceRingerVolume;

    # getter for: Lcom/android/exsettings/notification/PreferenceRingerVolume;->mPhoneRingtonePreference:Landroid/preference/Preference;
    invoke-static {v0}, Lcom/android/exsettings/notification/PreferenceRingerVolume;->access$400(Lcom/android/exsettings/notification/PreferenceRingerVolume;)Landroid/preference/Preference;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 315
    :pswitch_1
    iget-object v0, p0, Lcom/android/exsettings/notification/PreferenceRingerVolume$H;->this$0:Lcom/android/exsettings/notification/PreferenceRingerVolume;

    # getter for: Lcom/android/exsettings/notification/PreferenceRingerVolume;->mNotificationRingtonePreference:Landroid/preference/Preference;
    invoke-static {v0}, Lcom/android/exsettings/notification/PreferenceRingerVolume;->access$500(Lcom/android/exsettings/notification/PreferenceRingerVolume;)Landroid/preference/Preference;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 318
    :pswitch_2
    iget-object v0, p0, Lcom/android/exsettings/notification/PreferenceRingerVolume$H;->this$0:Lcom/android/exsettings/notification/PreferenceRingerVolume;

    # getter for: Lcom/android/exsettings/notification/PreferenceRingerVolume;->mVolumeCallback:Lcom/android/exsettings/notification/PreferenceRingerVolume$VolumePreferenceCallback;
    invoke-static {v0}, Lcom/android/exsettings/notification/PreferenceRingerVolume;->access$600(Lcom/android/exsettings/notification/PreferenceRingerVolume;)Lcom/android/exsettings/notification/PreferenceRingerVolume$VolumePreferenceCallback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/exsettings/notification/PreferenceRingerVolume$VolumePreferenceCallback;->stopSample()V

    goto :goto_0

    .line 323
    :pswitch_3
    iget-object v0, p0, Lcom/android/exsettings/notification/PreferenceRingerVolume$H;->this$0:Lcom/android/exsettings/notification/PreferenceRingerVolume;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->what:I

    # invokes: Lcom/android/exsettings/notification/PreferenceRingerVolume;->updateRingOrNotificationIcon(II)V
    invoke-static {v0, v1, v2}, Lcom/android/exsettings/notification/PreferenceRingerVolume;->access$700(Lcom/android/exsettings/notification/PreferenceRingerVolume;II)V

    goto :goto_0

    .line 310
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method
