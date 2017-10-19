.class Lcom/android/exsettings/sim/SimSettings$8;
.super Landroid/telephony/PhoneStateListener;
.source "SimSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/sim/SimSettings;->getPhoneStateListener(II)Landroid/telephony/PhoneStateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/sim/SimSettings;

.field final synthetic val$i:I


# direct methods
.method constructor <init>(Lcom/android/exsettings/sim/SimSettings;II)V
    .locals 0
    .param p2, "x0"    # I

    .prologue
    .line 1405
    iput-object p1, p0, Lcom/android/exsettings/sim/SimSettings$8;->this$0:Lcom/android/exsettings/sim/SimSettings;

    iput p3, p0, Lcom/android/exsettings/sim/SimSettings$8;->val$i:I

    invoke-direct {p0, p2}, Landroid/telephony/PhoneStateListener;-><init>(I)V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 2
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    .line 1409
    iget-object v0, p0, Lcom/android/exsettings/sim/SimSettings$8;->this$0:Lcom/android/exsettings/sim/SimSettings;

    # getter for: Lcom/android/exsettings/sim/SimSettings;->mCallState:[I
    invoke-static {v0}, Lcom/android/exsettings/sim/SimSettings;->access$3100(Lcom/android/exsettings/sim/SimSettings;)[I

    move-result-object v0

    iget v1, p0, Lcom/android/exsettings/sim/SimSettings$8;->val$i:I

    aput p1, v0, v1

    .line 1410
    iget-object v0, p0, Lcom/android/exsettings/sim/SimSettings$8;->this$0:Lcom/android/exsettings/sim/SimSettings;

    # invokes: Lcom/android/exsettings/sim/SimSettings;->updateCellularDataValues()V
    invoke-static {v0}, Lcom/android/exsettings/sim/SimSettings;->access$3000(Lcom/android/exsettings/sim/SimSettings;)V

    .line 1411
    return-void
.end method
