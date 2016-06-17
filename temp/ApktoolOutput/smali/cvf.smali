.class public final Lcvf;
.super Landroid/widget/BaseAdapter;
.source "GpuSelectDialog.java"


# instance fields
.field a:I

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/api/proto/ExtensionPack;",
            ">;"
        }
    .end annotation
.end field

.field private synthetic c:Lcvb;


# direct methods
.method public constructor <init>(Lcvb;Ljava/util/List;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/api/proto/ExtensionPack;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 75
    iput-object p1, p0, Lcvf;->c:Lcvb;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 73
    const/4 v0, 0x0

    iput v0, p0, Lcvf;->a:I

    .line 76
    iput-object p2, p0, Lcvf;->b:Ljava/util/List;

    .line 77
    return-void
.end method

.method static synthetic a(Lcvf;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 70
    iput p1, p0, Lcvf;->a:I

    return p1
.end method


# virtual methods
.method public final a(I)Lcom/wandoujia/api/proto/ExtensionPack;
    .locals 1
    .parameter

    .prologue
    .line 90
    iget-object v0, p0, Lcvf;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcvf;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 91
    iget-object v0, p0, Lcvf;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/api/proto/ExtensionPack;

    .line 93
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcvf;->b:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcvf;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public final synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 70
    invoke-virtual {p0, p1}, Lcvf;->a(I)Lcom/wandoujia/api/proto/ExtensionPack;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 98
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

    .line 103
    if-eqz p2, :cond_1

    .line 105
    :goto_0
    sget v0, Lcom/wandoujia/gamepacket/R$id;->extension_radioButton:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 106
    sget v1, Lcom/wandoujia/gamepacket/R$id;->extension_textview:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 108
    iget-object v2, p0, Lcvf;->b:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wandoujia/api/proto/ExtensionPack;

    iget-object v2, v2, Lcom/wandoujia/api/proto/ExtensionPack;->description:Ljava/lang/String;

    .line 109
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "\n"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 110
    const-string v5, "\n"

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 111
    aget-object v5, v2, v4

    invoke-virtual {v0, v5}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 112
    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    :cond_0
    invoke-virtual {v0, v4}, Landroid/widget/RadioButton;->setClickable(Z)V

    .line 115
    iget v1, p0, Lcvf;->a:I

    if-ne p1, v1, :cond_2

    move v1, v3

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 117
    new-instance v0, Lcvg;

    invoke-direct {v0, p0, p1}, Lcvg;-><init>(Lcvf;I)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    return-object p2

    .line 103
    :cond_1
    iget-object v0, p0, Lcvf;->c:Lcvb;

    iget-object v0, v0, Lcvb;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/wandoujia/gamepacket/R$layout;->game_packet_gpu_select_item_view:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    :cond_2
    move v1, v4

    .line 115
    goto :goto_1
.end method
