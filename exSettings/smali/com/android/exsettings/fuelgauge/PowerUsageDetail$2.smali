.class Lcom/android/exsettings/fuelgauge/PowerUsageDetail$2;
.super Ljava/lang/Object;
.source "PowerUsageDetail.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->addControl(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/fuelgauge/PowerUsageDetail;

.field final synthetic val$action:I


# direct methods
.method constructor <init>(Lcom/android/exsettings/fuelgauge/PowerUsageDetail;I)V
    .locals 0

    .prologue
    .line 650
    iput-object p1, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail$2;->this$0:Lcom/android/exsettings/fuelgauge/PowerUsageDetail;

    iput p2, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail$2;->val$action:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 653
    iget-object v0, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail$2;->this$0:Lcom/android/exsettings/fuelgauge/PowerUsageDetail;

    iget v1, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail$2;->val$action:I

    # invokes: Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->doAction(I)V
    invoke-static {v0, v1}, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->access$000(Lcom/android/exsettings/fuelgauge/PowerUsageDetail;I)V

    .line 654
    const/4 v0, 0x1

    return v0
.end method
