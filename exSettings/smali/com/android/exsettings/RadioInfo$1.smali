.class Lcom/android/exsettings/RadioInfo$1;
.super Landroid/telephony/PhoneStateListener;
.source "RadioInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/RadioInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/RadioInfo;


# direct methods
.method constructor <init>(Lcom/android/exsettings/RadioInfo;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lcom/android/exsettings/RadioInfo$1;->this$0:Lcom/android/exsettings/RadioInfo;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallForwardingIndicatorChanged(Z)V
    .locals 1
    .param p1, "cfi"    # Z

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/exsettings/RadioInfo$1;->this$0:Lcom/android/exsettings/RadioInfo;

    # setter for: Lcom/android/exsettings/RadioInfo;->mCfiValue:Z
    invoke-static {v0, p1}, Lcom/android/exsettings/RadioInfo;->access$802(Lcom/android/exsettings/RadioInfo;Z)Z

    .line 168
    iget-object v0, p0, Lcom/android/exsettings/RadioInfo$1;->this$0:Lcom/android/exsettings/RadioInfo;

    # invokes: Lcom/android/exsettings/RadioInfo;->updateCallRedirect()V
    invoke-static {v0}, Lcom/android/exsettings/RadioInfo;->access$900(Lcom/android/exsettings/RadioInfo;)V

    .line 169
    return-void
.end method

.method public onCellInfoChanged(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 173
    .local p1, "arrayCi":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    iget-object v0, p0, Lcom/android/exsettings/RadioInfo$1;->this$0:Lcom/android/exsettings/RadioInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCellInfoChanged: arrayCi="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/exsettings/RadioInfo;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/exsettings/RadioInfo;->access$1000(Lcom/android/exsettings/RadioInfo;Ljava/lang/String;)V

    .line 174
    iget-object v0, p0, Lcom/android/exsettings/RadioInfo$1;->this$0:Lcom/android/exsettings/RadioInfo;

    # invokes: Lcom/android/exsettings/RadioInfo;->updateCellInfoTv(Ljava/util/List;)V
    invoke-static {v0, p1}, Lcom/android/exsettings/RadioInfo;->access$1100(Lcom/android/exsettings/RadioInfo;Ljava/util/List;)V

    .line 175
    return-void
.end method

.method public onCellLocationChanged(Landroid/telephony/CellLocation;)V
    .locals 1
    .param p1, "location"    # Landroid/telephony/CellLocation;

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/exsettings/RadioInfo$1;->this$0:Lcom/android/exsettings/RadioInfo;

    # invokes: Lcom/android/exsettings/RadioInfo;->updateLocation(Landroid/telephony/CellLocation;)V
    invoke-static {v0, p1}, Lcom/android/exsettings/RadioInfo;->access$500(Lcom/android/exsettings/RadioInfo;Landroid/telephony/CellLocation;)V

    .line 157
    return-void
.end method

.method public onDataActivity(I)V
    .locals 1
    .param p1, "direction"    # I

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/exsettings/RadioInfo$1;->this$0:Lcom/android/exsettings/RadioInfo;

    # invokes: Lcom/android/exsettings/RadioInfo;->updateDataStats2()V
    invoke-static {v0}, Lcom/android/exsettings/RadioInfo;->access$400(Lcom/android/exsettings/RadioInfo;)V

    .line 152
    return-void
.end method

.method public onDataConnectionRealTimeInfoChanged(Landroid/telephony/DataConnectionRealTimeInfo;)V
    .locals 3
    .param p1, "dcRtInfo"    # Landroid/telephony/DataConnectionRealTimeInfo;

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/exsettings/RadioInfo$1;->this$0:Lcom/android/exsettings/RadioInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDataConnectionRealTimeInfoChanged: dcRtInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/exsettings/RadioInfo;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/exsettings/RadioInfo;->access$1000(Lcom/android/exsettings/RadioInfo;Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lcom/android/exsettings/RadioInfo$1;->this$0:Lcom/android/exsettings/RadioInfo;

    # invokes: Lcom/android/exsettings/RadioInfo;->updateDcRtInfoTv(Landroid/telephony/DataConnectionRealTimeInfo;)V
    invoke-static {v0, p1}, Lcom/android/exsettings/RadioInfo;->access$1200(Lcom/android/exsettings/RadioInfo;Landroid/telephony/DataConnectionRealTimeInfo;)V

    .line 181
    return-void
.end method

.method public onDataConnectionStateChanged(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/exsettings/RadioInfo$1;->this$0:Lcom/android/exsettings/RadioInfo;

    # invokes: Lcom/android/exsettings/RadioInfo;->updateDataState()V
    invoke-static {v0}, Lcom/android/exsettings/RadioInfo;->access$000(Lcom/android/exsettings/RadioInfo;)V

    .line 144
    iget-object v0, p0, Lcom/android/exsettings/RadioInfo$1;->this$0:Lcom/android/exsettings/RadioInfo;

    # invokes: Lcom/android/exsettings/RadioInfo;->updateDataStats()V
    invoke-static {v0}, Lcom/android/exsettings/RadioInfo;->access$100(Lcom/android/exsettings/RadioInfo;)V

    .line 145
    iget-object v0, p0, Lcom/android/exsettings/RadioInfo$1;->this$0:Lcom/android/exsettings/RadioInfo;

    # invokes: Lcom/android/exsettings/RadioInfo;->updatePdpList()V
    invoke-static {v0}, Lcom/android/exsettings/RadioInfo;->access$200(Lcom/android/exsettings/RadioInfo;)V

    .line 146
    iget-object v0, p0, Lcom/android/exsettings/RadioInfo$1;->this$0:Lcom/android/exsettings/RadioInfo;

    # invokes: Lcom/android/exsettings/RadioInfo;->updateNetworkType()V
    invoke-static {v0}, Lcom/android/exsettings/RadioInfo;->access$300(Lcom/android/exsettings/RadioInfo;)V

    .line 147
    return-void
.end method

.method public onMessageWaitingIndicatorChanged(Z)V
    .locals 1
    .param p1, "mwi"    # Z

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/exsettings/RadioInfo$1;->this$0:Lcom/android/exsettings/RadioInfo;

    # setter for: Lcom/android/exsettings/RadioInfo;->mMwiValue:Z
    invoke-static {v0, p1}, Lcom/android/exsettings/RadioInfo;->access$602(Lcom/android/exsettings/RadioInfo;Z)Z

    .line 162
    iget-object v0, p0, Lcom/android/exsettings/RadioInfo$1;->this$0:Lcom/android/exsettings/RadioInfo;

    # invokes: Lcom/android/exsettings/RadioInfo;->updateMessageWaiting()V
    invoke-static {v0}, Lcom/android/exsettings/RadioInfo;->access$700(Lcom/android/exsettings/RadioInfo;)V

    .line 163
    return-void
.end method