.class public Lcom/android/exsettings/DataUsageSummary$AppItem;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppItem"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/exsettings/DataUsageSummary$AppItem;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/exsettings/DataUsageSummary$AppItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public category:I

.field public final key:I

.field public restricted:Z

.field public total:J

.field public uids:Landroid/util/SparseBooleanArray;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1832
    new-instance v0, Lcom/android/exsettings/DataUsageSummary$AppItem$1;

    invoke-direct {v0}, Lcom/android/exsettings/DataUsageSummary$AppItem$1;-><init>()V

    sput-object v0, Lcom/android/exsettings/DataUsageSummary$AppItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1793
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1790
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/exsettings/DataUsageSummary$AppItem;->uids:Landroid/util/SparseBooleanArray;

    .line 1794
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/exsettings/DataUsageSummary$AppItem;->key:I

    .line 1795
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "key"    # I

    .prologue
    .line 1797
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1790
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/exsettings/DataUsageSummary$AppItem;->uids:Landroid/util/SparseBooleanArray;

    .line 1798
    iput p1, p0, Lcom/android/exsettings/DataUsageSummary$AppItem;->key:I

    .line 1799
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 1801
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1790
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/exsettings/DataUsageSummary$AppItem;->uids:Landroid/util/SparseBooleanArray;

    .line 1802
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/exsettings/DataUsageSummary$AppItem;->key:I

    .line 1803
    invoke-virtual {p1}, Landroid/os/Parcel;->readSparseBooleanArray()Landroid/util/SparseBooleanArray;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/DataUsageSummary$AppItem;->uids:Landroid/util/SparseBooleanArray;

    .line 1804
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/exsettings/DataUsageSummary$AppItem;->total:J

    .line 1805
    return-void
.end method


# virtual methods
.method public addUid(I)V
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 1808
    iget-object v0, p0, Lcom/android/exsettings/DataUsageSummary$AppItem;->uids:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1809
    return-void
.end method

.method public compareTo(Lcom/android/exsettings/DataUsageSummary$AppItem;)I
    .locals 6
    .param p1, "another"    # Lcom/android/exsettings/DataUsageSummary$AppItem;

    .prologue
    .line 1825
    iget v1, p0, Lcom/android/exsettings/DataUsageSummary$AppItem;->category:I

    iget v2, p1, Lcom/android/exsettings/DataUsageSummary$AppItem;->category:I

    invoke-static {v1, v2}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    .line 1826
    .local v0, "comparison":I
    if-nez v0, :cond_0

    .line 1827
    iget-wide v2, p1, Lcom/android/exsettings/DataUsageSummary$AppItem;->total:J

    iget-wide v4, p0, Lcom/android/exsettings/DataUsageSummary$AppItem;->total:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    .line 1829
    :cond_0
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1781
    check-cast p1, Lcom/android/exsettings/DataUsageSummary$AppItem;

    invoke-virtual {p0, p1}, Lcom/android/exsettings/DataUsageSummary$AppItem;->compareTo(Lcom/android/exsettings/DataUsageSummary$AppItem;)I

    move-result v0

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 1820
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 1813
    iget v0, p0, Lcom/android/exsettings/DataUsageSummary$AppItem;->key:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1814
    iget-object v0, p0, Lcom/android/exsettings/DataUsageSummary$AppItem;->uids:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSparseBooleanArray(Landroid/util/SparseBooleanArray;)V

    .line 1815
    iget-wide v0, p0, Lcom/android/exsettings/DataUsageSummary$AppItem;->total:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1816
    return-void
.end method
