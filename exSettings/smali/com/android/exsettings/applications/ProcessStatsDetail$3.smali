.class final Lcom/android/exsettings/applications/ProcessStatsDetail$3;
.super Ljava/lang/Object;
.source "ProcessStatsDetail.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/applications/ProcessStatsDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/exsettings/applications/ProcStatsEntry$Service;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/exsettings/applications/ProcStatsEntry$Service;Lcom/android/exsettings/applications/ProcStatsEntry$Service;)I
    .locals 4
    .param p1, "lhs"    # Lcom/android/exsettings/applications/ProcStatsEntry$Service;
    .param p2, "rhs"    # Lcom/android/exsettings/applications/ProcStatsEntry$Service;

    .prologue
    .line 298
    iget-wide v0, p1, Lcom/android/exsettings/applications/ProcStatsEntry$Service;->mDuration:J

    iget-wide v2, p2, Lcom/android/exsettings/applications/ProcStatsEntry$Service;->mDuration:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 299
    const/4 v0, 0x1

    .line 303
    :goto_0
    return v0

    .line 300
    :cond_0
    iget-wide v0, p1, Lcom/android/exsettings/applications/ProcStatsEntry$Service;->mDuration:J

    iget-wide v2, p2, Lcom/android/exsettings/applications/ProcStatsEntry$Service;->mDuration:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 301
    const/4 v0, -0x1

    goto :goto_0

    .line 303
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 295
    check-cast p1, Lcom/android/exsettings/applications/ProcStatsEntry$Service;

    check-cast p2, Lcom/android/exsettings/applications/ProcStatsEntry$Service;

    invoke-virtual {p0, p1, p2}, Lcom/android/exsettings/applications/ProcessStatsDetail$3;->compare(Lcom/android/exsettings/applications/ProcStatsEntry$Service;Lcom/android/exsettings/applications/ProcStatsEntry$Service;)I

    move-result v0

    return v0
.end method
