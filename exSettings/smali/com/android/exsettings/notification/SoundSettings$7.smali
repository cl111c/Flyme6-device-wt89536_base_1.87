.class Lcom/android/exsettings/notification/SoundSettings$7;
.super Ljava/lang/Object;
.source "SoundSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/notification/SoundSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/notification/SoundSettings;


# direct methods
.method constructor <init>(Lcom/android/exsettings/notification/SoundSettings;)V
    .locals 0

    .prologue
    .line 547
    iput-object p1, p0, Lcom/android/exsettings/notification/SoundSettings$7;->this$0:Lcom/android/exsettings/notification/SoundSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x1

    .line 550
    iget-object v1, p0, Lcom/android/exsettings/notification/SoundSettings$7;->this$0:Lcom/android/exsettings/notification/SoundSettings;

    # getter for: Lcom/android/exsettings/notification/SoundSettings;->mPhoneRingtonePreference:Landroid/preference/Preference;
    invoke-static {v1}, Lcom/android/exsettings/notification/SoundSettings;->access$600(Lcom/android/exsettings/notification/SoundSettings;)Landroid/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 551
    iget-object v1, p0, Lcom/android/exsettings/notification/SoundSettings$7;->this$0:Lcom/android/exsettings/notification/SoundSettings;

    # getter for: Lcom/android/exsettings/notification/SoundSettings;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/exsettings/notification/SoundSettings;->access$700(Lcom/android/exsettings/notification/SoundSettings;)Landroid/content/Context;

    move-result-object v1

    # invokes: Lcom/android/exsettings/notification/SoundSettings;->updateRingtoneName(Landroid/content/Context;II)Ljava/lang/CharSequence;
    invoke-static {v1, v3, v4}, Lcom/android/exsettings/notification/SoundSettings;->access$800(Landroid/content/Context;II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 553
    .local v0, "summary":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    .line 554
    iget-object v1, p0, Lcom/android/exsettings/notification/SoundSettings$7;->this$0:Lcom/android/exsettings/notification/SoundSettings;

    # getter for: Lcom/android/exsettings/notification/SoundSettings;->mHandler:Lcom/android/exsettings/notification/SoundSettings$H;
    invoke-static {v1}, Lcom/android/exsettings/notification/SoundSettings;->access$500(Lcom/android/exsettings/notification/SoundSettings;)Lcom/android/exsettings/notification/SoundSettings$H;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Lcom/android/exsettings/notification/SoundSettings$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 557
    .end local v0    # "summary":Ljava/lang/CharSequence;
    :cond_0
    iget-object v1, p0, Lcom/android/exsettings/notification/SoundSettings$7;->this$0:Lcom/android/exsettings/notification/SoundSettings;

    # getter for: Lcom/android/exsettings/notification/SoundSettings;->mSim1PhoneRingtonePreference:Lcom/android/exsettings/DefaultRingtonePreference;
    invoke-static {v1}, Lcom/android/exsettings/notification/SoundSettings;->access$900(Lcom/android/exsettings/notification/SoundSettings;)Lcom/android/exsettings/DefaultRingtonePreference;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 558
    iget-object v1, p0, Lcom/android/exsettings/notification/SoundSettings$7;->this$0:Lcom/android/exsettings/notification/SoundSettings;

    # getter for: Lcom/android/exsettings/notification/SoundSettings;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/exsettings/notification/SoundSettings;->access$700(Lcom/android/exsettings/notification/SoundSettings;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exsettings/notification/SoundSettings$7;->this$0:Lcom/android/exsettings/notification/SoundSettings;

    # getter for: Lcom/android/exsettings/notification/SoundSettings;->mSim1PhoneRingtonePreference:Lcom/android/exsettings/DefaultRingtonePreference;
    invoke-static {v2}, Lcom/android/exsettings/notification/SoundSettings;->access$900(Lcom/android/exsettings/notification/SoundSettings;)Lcom/android/exsettings/DefaultRingtonePreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/exsettings/DefaultRingtonePreference;->getSubId()I

    move-result v2

    # invokes: Lcom/android/exsettings/notification/SoundSettings;->updateRingtoneName(Landroid/content/Context;II)Ljava/lang/CharSequence;
    invoke-static {v1, v3, v2}, Lcom/android/exsettings/notification/SoundSettings;->access$800(Landroid/content/Context;II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 560
    .restart local v0    # "summary":Ljava/lang/CharSequence;
    if-eqz v0, :cond_1

    .line 561
    iget-object v1, p0, Lcom/android/exsettings/notification/SoundSettings$7;->this$0:Lcom/android/exsettings/notification/SoundSettings;

    # getter for: Lcom/android/exsettings/notification/SoundSettings;->mHandler:Lcom/android/exsettings/notification/SoundSettings$H;
    invoke-static {v1}, Lcom/android/exsettings/notification/SoundSettings;->access$500(Lcom/android/exsettings/notification/SoundSettings;)Lcom/android/exsettings/notification/SoundSettings$H;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exsettings/notification/SoundSettings$7;->this$0:Lcom/android/exsettings/notification/SoundSettings;

    # getter for: Lcom/android/exsettings/notification/SoundSettings;->mSim1PhoneRingtonePreference:Lcom/android/exsettings/DefaultRingtonePreference;
    invoke-static {v2}, Lcom/android/exsettings/notification/SoundSettings;->access$900(Lcom/android/exsettings/notification/SoundSettings;)Lcom/android/exsettings/DefaultRingtonePreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/exsettings/DefaultRingtonePreference;->getSubId()I

    move-result v2

    invoke-virtual {v1, v3, v2, v5, v0}, Lcom/android/exsettings/notification/SoundSettings$H;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 564
    .end local v0    # "summary":Ljava/lang/CharSequence;
    :cond_1
    iget-object v1, p0, Lcom/android/exsettings/notification/SoundSettings$7;->this$0:Lcom/android/exsettings/notification/SoundSettings;

    # getter for: Lcom/android/exsettings/notification/SoundSettings;->mSim2PhoneRingtonePreference:Lcom/android/exsettings/DefaultRingtonePreference;
    invoke-static {v1}, Lcom/android/exsettings/notification/SoundSettings;->access$1000(Lcom/android/exsettings/notification/SoundSettings;)Lcom/android/exsettings/DefaultRingtonePreference;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 565
    iget-object v1, p0, Lcom/android/exsettings/notification/SoundSettings$7;->this$0:Lcom/android/exsettings/notification/SoundSettings;

    # getter for: Lcom/android/exsettings/notification/SoundSettings;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/exsettings/notification/SoundSettings;->access$700(Lcom/android/exsettings/notification/SoundSettings;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exsettings/notification/SoundSettings$7;->this$0:Lcom/android/exsettings/notification/SoundSettings;

    # getter for: Lcom/android/exsettings/notification/SoundSettings;->mSim2PhoneRingtonePreference:Lcom/android/exsettings/DefaultRingtonePreference;
    invoke-static {v2}, Lcom/android/exsettings/notification/SoundSettings;->access$1000(Lcom/android/exsettings/notification/SoundSettings;)Lcom/android/exsettings/DefaultRingtonePreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/exsettings/DefaultRingtonePreference;->getSubId()I

    move-result v2

    # invokes: Lcom/android/exsettings/notification/SoundSettings;->updateRingtoneName(Landroid/content/Context;II)Ljava/lang/CharSequence;
    invoke-static {v1, v3, v2}, Lcom/android/exsettings/notification/SoundSettings;->access$800(Landroid/content/Context;II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 567
    .restart local v0    # "summary":Ljava/lang/CharSequence;
    if-eqz v0, :cond_2

    .line 568
    iget-object v1, p0, Lcom/android/exsettings/notification/SoundSettings$7;->this$0:Lcom/android/exsettings/notification/SoundSettings;

    # getter for: Lcom/android/exsettings/notification/SoundSettings;->mHandler:Lcom/android/exsettings/notification/SoundSettings$H;
    invoke-static {v1}, Lcom/android/exsettings/notification/SoundSettings;->access$500(Lcom/android/exsettings/notification/SoundSettings;)Lcom/android/exsettings/notification/SoundSettings$H;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exsettings/notification/SoundSettings$7;->this$0:Lcom/android/exsettings/notification/SoundSettings;

    # getter for: Lcom/android/exsettings/notification/SoundSettings;->mSim2PhoneRingtonePreference:Lcom/android/exsettings/DefaultRingtonePreference;
    invoke-static {v2}, Lcom/android/exsettings/notification/SoundSettings;->access$1000(Lcom/android/exsettings/notification/SoundSettings;)Lcom/android/exsettings/DefaultRingtonePreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/exsettings/DefaultRingtonePreference;->getSubId()I

    move-result v2

    invoke-virtual {v1, v3, v2, v5, v0}, Lcom/android/exsettings/notification/SoundSettings$H;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 571
    .end local v0    # "summary":Ljava/lang/CharSequence;
    :cond_2
    iget-object v1, p0, Lcom/android/exsettings/notification/SoundSettings$7;->this$0:Lcom/android/exsettings/notification/SoundSettings;

    # getter for: Lcom/android/exsettings/notification/SoundSettings;->mNotificationRingtonePreference:Landroid/preference/Preference;
    invoke-static {v1}, Lcom/android/exsettings/notification/SoundSettings;->access$1100(Lcom/android/exsettings/notification/SoundSettings;)Landroid/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 572
    iget-object v1, p0, Lcom/android/exsettings/notification/SoundSettings$7;->this$0:Lcom/android/exsettings/notification/SoundSettings;

    # getter for: Lcom/android/exsettings/notification/SoundSettings;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/exsettings/notification/SoundSettings;->access$700(Lcom/android/exsettings/notification/SoundSettings;)Landroid/content/Context;

    move-result-object v1

    # invokes: Lcom/android/exsettings/notification/SoundSettings;->updateRingtoneName(Landroid/content/Context;II)Ljava/lang/CharSequence;
    invoke-static {v1, v6, v4}, Lcom/android/exsettings/notification/SoundSettings;->access$800(Landroid/content/Context;II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 574
    .restart local v0    # "summary":Ljava/lang/CharSequence;
    if-eqz v0, :cond_3

    .line 575
    iget-object v1, p0, Lcom/android/exsettings/notification/SoundSettings$7;->this$0:Lcom/android/exsettings/notification/SoundSettings;

    # getter for: Lcom/android/exsettings/notification/SoundSettings;->mHandler:Lcom/android/exsettings/notification/SoundSettings$H;
    invoke-static {v1}, Lcom/android/exsettings/notification/SoundSettings;->access$500(Lcom/android/exsettings/notification/SoundSettings;)Lcom/android/exsettings/notification/SoundSettings$H;

    move-result-object v1

    invoke-virtual {v1, v6, v0}, Lcom/android/exsettings/notification/SoundSettings$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 578
    .end local v0    # "summary":Ljava/lang/CharSequence;
    :cond_3
    iget-object v1, p0, Lcom/android/exsettings/notification/SoundSettings$7;->this$0:Lcom/android/exsettings/notification/SoundSettings;

    # getter for: Lcom/android/exsettings/notification/SoundSettings;->mAlarmRingtonePreference:Landroid/preference/Preference;
    invoke-static {v1}, Lcom/android/exsettings/notification/SoundSettings;->access$1200(Lcom/android/exsettings/notification/SoundSettings;)Landroid/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 579
    iget-object v1, p0, Lcom/android/exsettings/notification/SoundSettings$7;->this$0:Lcom/android/exsettings/notification/SoundSettings;

    # getter for: Lcom/android/exsettings/notification/SoundSettings;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/exsettings/notification/SoundSettings;->access$700(Lcom/android/exsettings/notification/SoundSettings;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x4

    # invokes: Lcom/android/exsettings/notification/SoundSettings;->updateRingtoneName(Landroid/content/Context;II)Ljava/lang/CharSequence;
    invoke-static {v1, v2, v4}, Lcom/android/exsettings/notification/SoundSettings;->access$800(Landroid/content/Context;II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 581
    .restart local v0    # "summary":Ljava/lang/CharSequence;
    if-eqz v0, :cond_4

    .line 582
    iget-object v1, p0, Lcom/android/exsettings/notification/SoundSettings$7;->this$0:Lcom/android/exsettings/notification/SoundSettings;

    # getter for: Lcom/android/exsettings/notification/SoundSettings;->mHandler:Lcom/android/exsettings/notification/SoundSettings$H;
    invoke-static {v1}, Lcom/android/exsettings/notification/SoundSettings;->access$500(Lcom/android/exsettings/notification/SoundSettings;)Lcom/android/exsettings/notification/SoundSettings$H;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v1, v2, v0}, Lcom/android/exsettings/notification/SoundSettings$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 585
    .end local v0    # "summary":Ljava/lang/CharSequence;
    :cond_4
    return-void
.end method
