.class Lcom/android/exsettings/fuelgauge/PowerUsageDetail$1;
.super Ljava/lang/Object;
.source "PowerUsageDetail.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->createDetails()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/fuelgauge/PowerUsageDetail;


# direct methods
.method constructor <init>(Lcom/android/exsettings/fuelgauge/PowerUsageDetail;)V
    .locals 0

    .prologue
    .line 436
    iput-object p1, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail$1;->this$0:Lcom/android/exsettings/fuelgauge/PowerUsageDetail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v2, 0x0

    .line 439
    iget-object v0, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail$1;->this$0:Lcom/android/exsettings/fuelgauge/PowerUsageDetail;

    iget-object v1, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail$1;->this$0:Lcom/android/exsettings/fuelgauge/PowerUsageDetail;

    iget-object v1, v1, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mApp:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, v1, v2, v2}, Lcom/android/exsettings/fuelgauge/HighPowerDetail;->show(Landroid/app/Fragment;Ljava/lang/String;IZ)V

    .line 440
    const/4 v0, 0x1

    return v0
.end method
