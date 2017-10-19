.class public Lcom/android/exsettings/deviceinfo/UsageBarPreference;
.super Landroid/preference/Preference;
.source "UsageBarPreference.java"


# instance fields
.field private mChart:Lcom/android/exsettings/deviceinfo/PercentageBarChart;

.field private final mEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/exsettings/deviceinfo/PercentageBarChart$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private mMemory:Landroid/widget/TextView;

.field private mMemory_usage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/exsettings/deviceinfo/UsageBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/exsettings/deviceinfo/UsageBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/exsettings/deviceinfo/UsageBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v1, 0x0

    .line 58
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 39
    iput-object v1, p0, Lcom/android/exsettings/deviceinfo/UsageBarPreference;->mChart:Lcom/android/exsettings/deviceinfo/PercentageBarChart;

    .line 41
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/deviceinfo/UsageBarPreference;->mEntries:Ljava/util/List;

    .line 42
    iput-object v1, p0, Lcom/android/exsettings/deviceinfo/UsageBarPreference;->mMemory:Landroid/widget/TextView;

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lcom/android/exsettings/deviceinfo/UsageBarPreference;->mMemory_usage:Ljava/lang/String;

    .line 59
    const v0, 0x7f0400b8

    invoke-virtual {p0, v0}, Lcom/android/exsettings/deviceinfo/UsageBarPreference;->setLayoutResource(I)V

    .line 60
    return-void
.end method


# virtual methods
.method public addEntry(IFI)V
    .locals 2
    .param p1, "order"    # I
    .param p2, "percentage"    # F
    .param p3, "color"    # I

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/exsettings/deviceinfo/UsageBarPreference;->mEntries:Ljava/util/List;

    invoke-static {p1, p2, p3}, Lcom/android/exsettings/deviceinfo/PercentageBarChart;->createEntry(IFI)Lcom/android/exsettings/deviceinfo/PercentageBarChart$Entry;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    iget-object v0, p0, Lcom/android/exsettings/deviceinfo/UsageBarPreference;->mEntries:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 65
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/exsettings/deviceinfo/UsageBarPreference;->mEntries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 93
    return-void
.end method

.method public commit()V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/exsettings/deviceinfo/UsageBarPreference;->mChart:Lcom/android/exsettings/deviceinfo/PercentageBarChart;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/android/exsettings/deviceinfo/UsageBarPreference;->mChart:Lcom/android/exsettings/deviceinfo/PercentageBarChart;

    invoke-virtual {v0}, Lcom/android/exsettings/deviceinfo/PercentageBarChart;->invalidate()V

    .line 89
    :cond_0
    return-void
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 69
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 71
    const v0, 0x7f120179

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/exsettings/deviceinfo/PercentageBarChart;

    iput-object v0, p0, Lcom/android/exsettings/deviceinfo/UsageBarPreference;->mChart:Lcom/android/exsettings/deviceinfo/PercentageBarChart;

    .line 72
    iget-object v0, p0, Lcom/android/exsettings/deviceinfo/UsageBarPreference;->mChart:Lcom/android/exsettings/deviceinfo/PercentageBarChart;

    iget-object v1, p0, Lcom/android/exsettings/deviceinfo/UsageBarPreference;->mEntries:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/android/exsettings/deviceinfo/PercentageBarChart;->setEntries(Ljava/util/Collection;)V

    .line 73
    const v0, 0x7f12017a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/exsettings/deviceinfo/UsageBarPreference;->mMemory:Landroid/widget/TextView;

    .line 74
    iget-object v0, p0, Lcom/android/exsettings/deviceinfo/UsageBarPreference;->mMemory:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/exsettings/deviceinfo/UsageBarPreference;->mMemory_usage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    return-void
.end method

.method public setSummary(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "summary"    # Ljava/lang/CharSequence;

    .prologue
    .line 79
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/deviceinfo/UsageBarPreference;->mMemory_usage:Ljava/lang/String;

    .line 80
    iget-object v0, p0, Lcom/android/exsettings/deviceinfo/UsageBarPreference;->mMemory:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 81
    iget-object v0, p0, Lcom/android/exsettings/deviceinfo/UsageBarPreference;->mMemory:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    :cond_0
    return-void
.end method
