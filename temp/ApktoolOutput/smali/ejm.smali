.class public final Lejm;
.super Landroid/widget/BaseAdapter;
.source "GpuSelectDialog.java"


# instance fields
.field a:I

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/entities/app/ApkObbInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 71
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 69
    const/4 v0, 0x0

    iput v0, p0, Lejm;->a:I

    .line 72
    iput-object p1, p0, Lejm;->b:Ljava/util/List;

    .line 73
    return-void
.end method

.method static synthetic a(Lejm;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 66
    iput p1, p0, Lejm;->a:I

    return p1
.end method


# virtual methods
.method public final a(I)Lcom/wandoujia/entities/app/ApkObbInfo;
    .locals 1
    .parameter

    .prologue
    .line 86
    iget-object v0, p0, Lejm;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lejm;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 87
    iget-object v0, p0, Lejm;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/entities/app/ApkObbInfo;

    .line 89
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lejm;->b:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lejm;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public final synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 66
    invoke-virtual {p0, p1}, Lejm;->a(I)Lcom/wandoujia/entities/app/ApkObbInfo;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 94
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 99
    if-eqz p2, :cond_1

    .line 100
    :goto_0
    sget v0, Lcom/wandoujia/launcher_base/R$id;->extension_radioButton:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 101
    sget v1, Lcom/wandoujia/launcher_base/R$id;->extension_textview:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 103
    iget-object v2, p0, Lejm;->b:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wandoujia/entities/app/ApkObbInfo;

    invoke-virtual {v2}, Lcom/wandoujia/entities/app/ApkObbInfo;->getDescription()Ljava/lang/String;

    move-result-object v2

    .line 104
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "\n"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 105
    const-string v5, "\n"

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 106
    aget-object v5, v2, v4

    invoke-virtual {v0, v5}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 107
    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    :cond_0
    invoke-virtual {v0, v4}, Landroid/widget/RadioButton;->setClickable(Z)V

    .line 110
    iget v1, p0, Lejm;->a:I

    if-ne p1, v1, :cond_2

    move v1, v3

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 112
    new-instance v0, Lejn;

    invoke-direct {v0, p0, p1}, Lejn;-><init>(Lejm;I)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    return-object p2

    .line 99
    :cond_1
    sget v0, Lcom/wandoujia/launcher_base/R$layout;->aa_gpk_dpk_pack_list_item:I

    invoke-static {p3, v0}, Lehx;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    :cond_2
    move v1, v4

    .line 110
    goto :goto_1
.end method
