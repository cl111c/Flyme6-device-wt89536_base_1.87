.class Lcom/android/exsettings/notification/NotificationSettings$1;
.super Ljava/lang/Object;
.source "NotificationSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/notification/NotificationSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/notification/NotificationSettings;


# direct methods
.method constructor <init>(Lcom/android/exsettings/notification/NotificationSettings;)V
    .locals 0

    .prologue
    .line 376
    iput-object p1, p0, Lcom/android/exsettings/notification/NotificationSettings$1;->this$0:Lcom/android/exsettings/notification/NotificationSettings;

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

    .line 379
    iget-object v1, p0, Lcom/android/exsettings/notification/NotificationSettings$1;->this$0:Lcom/android/exsettings/notification/NotificationSettings;

    # getter for: Lcom/android/exsettings/notification/NotificationSettings;->mPhoneRingtonePreference:Landroid/preference/Preference;
    invoke-static {v1}, Lcom/android/exsettings/notification/NotificationSettings;->access$400(Lcom/android/exsettings/notification/NotificationSettings;)Landroid/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 381
    iget-object v1, p0, Lcom/android/exsettings/notification/NotificationSettings$1;->this$0:Lcom/android/exsettings/notification/NotificationSettings;

    # getter for: Lcom/android/exsettings/notification/NotificationSettings;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/exsettings/notification/NotificationSettings;->access$500(Lcom/android/exsettings/notification/NotificationSettings;)Landroid/content/Context;

    move-result-object v1

    # invokes: Lcom/android/exsettings/notification/NotificationSettings;->updateRingtoneName(Landroid/content/Context;II)Ljava/lang/CharSequence;
    invoke-static {v1, v3, v4}, Lcom/android/exsettings/notification/NotificationSettings;->access$600(Landroid/content/Context;II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 384
    .local v0, "summary":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    .line 385
    iget-object v1, p0, Lcom/android/exsettings/notification/NotificationSettings$1;->this$0:Lcom/android/exsettings/notification/NotificationSettings;

    # getter for: Lcom/android/exsettings/notification/NotificationSettings;->mHandler:Lcom/android/exsettings/notification/NotificationSettings$H;
    invoke-static {v1}, Lcom/android/exsettings/notification/NotificationSettings;->access$300(Lcom/android/exsettings/notification/NotificationSettings;)Lcom/android/exsettings/notification/NotificationSettings$H;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Lcom/android/exsettings/notification/NotificationSettings$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 389
    .end local v0    # "summary":Ljava/lang/CharSequence;
    :cond_0
    iget-object v1, p0, Lcom/android/exsettings/notification/NotificationSettings$1;->this$0:Lcom/android/exsettings/notification/NotificationSettings;

    # getter for: Lcom/android/exsettings/notification/NotificationSettings;->mSim1PhoneRingtonePreference:Lcom/android/exsettings/DefaultRingtonePreference;
    invoke-static {v1}, Lcom/android/exsettings/notification/NotificationSettings;->access$700(Lcom/android/exsettings/notification/NotificationSettings;)Lcom/android/exsettings/DefaultRingtonePreference;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 390
    iget-object v1, p0, Lcom/android/exsettings/notification/NotificationSettings$1;->this$0:Lcom/android/exsettings/notification/NotificationSettings;

    # getter for: Lcom/android/exsettings/notification/NotificationSettings;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/exsettings/notification/NotificationSettings;->access$500(Lcom/android/exsettings/notification/NotificationSettings;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exsettings/notification/NotificationSettings$1;->this$0:Lcom/android/exsettings/notification/NotificationSettings;

    # getter for: Lcom/android/exsettings/notification/NotificationSettings;->mSim1PhoneRingtonePreference:Lcom/android/exsettings/DefaultRingtonePreference;
    invoke-static {v2}, Lcom/android/exsettings/notification/NotificationSettings;->access$700(Lcom/android/exsettings/notification/NotificationSettings;)Lcom/android/exsettings/DefaultRingtonePreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/exsettings/DefaultRingtonePreference;->getSubId()I

    move-result v2

    # invokes: Lcom/android/exsettings/notification/NotificationSettings;->updateRingtoneName(Landroid/content/Context;II)Ljava/lang/CharSequence;
    invoke-static {v1, v3, v2}, Lcom/android/exsettings/notification/NotificationSettings;->access$600(Landroid/content/Context;II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 392
    .restart local v0    # "summary":Ljava/lang/CharSequence;
    if-eqz v0, :cond_1

    .line 393
    iget-object v1, p0, Lcom/android/exsettings/notification/NotificationSettings$1;->this$0:Lcom/android/exsettings/notification/NotificationSettings;

    # getter for: Lcom/android/exsettings/notification/NotificationSettings;->mHandler:Lcom/android/exsettings/notification/NotificationSettings$H;
    invoke-static {v1}, Lcom/android/exsettings/notification/NotificationSettings;->access$300(Lcom/android/exsettings/notification/NotificationSettings;)Lcom/android/exsettings/notification/NotificationSettings$H;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exsettings/notification/NotificationSettings$1;->this$0:Lcom/android/exsettings/notification/NotificationSettings;

    # getter for: Lcom/android/exsettings/notification/NotificationSettings;->mSim1PhoneRingtonePreference:Lcom/android/exsettings/DefaultRingtonePreference;
    invoke-static {v2}, Lcom/android/exsettings/notification/NotificationSettings;->access$700(Lcom/android/exsettings/notification/NotificationSettings;)Lcom/android/exsettings/DefaultRingtonePreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/exsettings/DefaultRingtonePreference;->getSubId()I

    move-result v2

    invoke-virtual {v1, v3, v2, v5, v0}, Lcom/android/exsettings/notification/NotificationSettings$H;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 396
    .end local v0    # "summary":Ljava/lang/CharSequence;
    :cond_1
    iget-object v1, p0, Lcom/android/exsettings/notification/NotificationSettings$1;->this$0:Lcom/android/exsettings/notification/NotificationSettings;

    # getter for: Lcom/android/exsettings/notification/NotificationSettings;->mSim2PhoneRingtonePreference:Lcom/android/exsettings/DefaultRingtonePreference;
    invoke-static {v1}, Lcom/android/exsettings/notification/NotificationSettings;->access$800(Lcom/android/exsettings/notification/NotificationSettings;)Lcom/android/exsettings/DefaultRingtonePreference;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 397
    iget-object v1, p0, Lcom/android/exsettings/notification/NotificationSettings$1;->this$0:Lcom/android/exsettings/notification/NotificationSettings;

    # getter for: Lcom/android/exsettings/notification/NotificationSettings;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/exsettings/notification/NotificationSettings;->access$500(Lcom/android/exsettings/notification/NotificationSettings;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exsettings/notification/NotificationSettings$1;->this$0:Lcom/android/exsettings/notification/NotificationSettings;

    # getter for: Lcom/android/exsettings/notification/NotificationSettings;->mSim2PhoneRingtonePreference:Lcom/android/exsettings/DefaultRingtonePreference;
    invoke-static {v2}, Lcom/android/exsettings/notification/NotificationSettings;->access$800(Lcom/android/exsettings/notification/NotificationSettings;)Lcom/android/exsettings/DefaultRingtonePreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/exsettings/DefaultRingtonePreference;->getSubId()I

    move-result v2

    # invokes: Lcom/android/exsettings/notification/NotificationSettings;->updateRingtoneName(Landroid/content/Context;II)Ljava/lang/CharSequence;
    invoke-static {v1, v3, v2}, Lcom/android/exsettings/notification/NotificationSettings;->access$600(Landroid/content/Context;II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 399
    .restart local v0    # "summary":Ljava/lang/CharSequence;
    if-eqz v0, :cond_2

    .line 400
    iget-object v1, p0, Lcom/android/exsettings/notification/NotificationSettings$1;->this$0:Lcom/android/exsettings/notification/NotificationSettings;

    # getter for: Lcom/android/exsettings/notification/NotificationSettings;->mHandler:Lcom/android/exsettings/notification/NotificationSettings$H;
    invoke-static {v1}, Lcom/android/exsettings/notification/NotificationSettings;->access$300(Lcom/android/exsettings/notification/NotificationSettings;)Lcom/android/exsettings/notification/NotificationSettings$H;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exsettings/notification/NotificationSettings$1;->this$0:Lcom/android/exsettings/notification/NotificationSettings;

    # getter for: Lcom/android/exsettings/notification/NotificationSettings;->mSim2PhoneRingtonePreference:Lcom/android/exsettings/DefaultRingtonePreference;
    invoke-static {v2}, Lcom/android/exsettings/notification/NotificationSettings;->access$800(Lcom/android/exsettings/notification/NotificationSettings;)Lcom/android/exsettings/DefaultRingtonePreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/exsettings/DefaultRingtonePreference;->getSubId()I

    move-result v2

    invoke-virtual {v1, v3, v2, v5, v0}, Lcom/android/exsettings/notification/NotificationSettings$H;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 404
    .end local v0    # "summary":Ljava/lang/CharSequence;
    :cond_2
    iget-object v1, p0, Lcom/android/exsettings/notification/NotificationSettings$1;->this$0:Lcom/android/exsettings/notification/NotificationSettings;

    # getter for: Lcom/android/exsettings/notification/NotificationSettings;->mNotificationRingtonePreference:Landroid/preference/Preference;
    invoke-static {v1}, Lcom/android/exsettings/notification/NotificationSettings;->access$900(Lcom/android/exsettings/notification/NotificationSettings;)Landroid/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 406
    iget-object v1, p0, Lcom/android/exsettings/notification/NotificationSettings$1;->this$0:Lcom/android/exsettings/notification/NotificationSettings;

    # getter for: Lcom/android/exsettings/notification/NotificationSettings;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/exsettings/notification/NotificationSettings;->access$500(Lcom/android/exsettings/notification/NotificationSettings;)Landroid/content/Context;

    move-result-object v1

    # invokes: Lcom/android/exsettings/notification/NotificationSettings;->updateRingtoneName(Landroid/content/Context;II)Ljava/lang/CharSequence;
    invoke-static {v1, v6, v4}, Lcom/android/exsettings/notification/NotificationSettings;->access$600(Landroid/content/Context;II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 409
    .restart local v0    # "summary":Ljava/lang/CharSequence;
    if-eqz v0, :cond_3

    .line 410
    iget-object v1, p0, Lcom/android/exsettings/notification/NotificationSettings$1;->this$0:Lcom/android/exsettings/notification/NotificationSettings;

    # getter for: Lcom/android/exsettings/notification/NotificationSettings;->mHandler:Lcom/android/exsettings/notification/NotificationSettings$H;
    invoke-static {v1}, Lcom/android/exsettings/notification/NotificationSettings;->access$300(Lcom/android/exsettings/notification/NotificationSettings;)Lcom/android/exsettings/notification/NotificationSettings$H;

    move-result-object v1

    invoke-virtual {v1, v6, v0}, Lcom/android/exsettings/notification/NotificationSettings$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 413
    .end local v0    # "summary":Ljava/lang/CharSequence;
    :cond_3
    return-void
.end method
