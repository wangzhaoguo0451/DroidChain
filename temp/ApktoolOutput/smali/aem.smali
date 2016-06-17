.class final Laem;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field private synthetic a:Lael;


# direct methods
.method private constructor <init>(Lael;)V
    .locals 0
    .parameter

    .prologue
    .line 144
    iput-object p1, p0, Laem;->a:Lael;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lael;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 144
    invoke-direct {p0, p1}, Laem;-><init>(Lael;)V

    return-void
.end method

.method private a(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 156
    iget-object v0, p0, Laem;->a:Lael;

    invoke-static {v0}, Lael;->a(Lael;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Laem;->a:Lael;

    invoke-static {v0}, Lael;->a(Lael;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 157
    iget-object v0, p0, Laem;->a:Lael;

    invoke-static {v0}, Lael;->a(Lael;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 159
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Laem;->a:Lael;

    invoke-static {v0}, Lael;->a(Lael;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Laem;->a:Lael;

    invoke-static {v0}, Lael;->a(Lael;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 151
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-direct {p0, p1}, Laem;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 164
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 169
    if-nez p2, :cond_0

    .line 171
    invoke-static {}, Lade;->a()Lade;

    move-result-object v0

    iget-object v0, v0, Lade;->a:Landroid/content/Context;

    .line 173
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 175
    const-string v1, "mini_ui_select_button_item"

    invoke-static {v1}, Lg;->f(Ljava/lang/String;)I

    move-result v1

    .line 176
    const/4 v2, 0x0

    .line 174
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 179
    :cond_0
    invoke-virtual {p0}, Laem;->getCount()I

    move-result v0

    .line 180
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 182
    const-string v0, "mini_table_normal_selector"

    invoke-static {v0}, Lg;->e(Ljava/lang/String;)I

    move-result v0

    .line 181
    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 195
    :goto_0
    const-string v0, "mini_select_button_text"

    invoke-static {v0}, Lg;->a(Ljava/lang/String;)I

    move-result v0

    .line 194
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 196
    invoke-direct {p0, p1}, Laem;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    iget-object v1, p0, Laem;->a:Lael;

    iget v1, v1, Laez;->f:F

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 198
    return-object p2

    .line 183
    :cond_1
    if-nez p1, :cond_2

    .line 185
    const-string v0, "mini_table_top_selector"

    invoke-static {v0}, Lg;->e(Ljava/lang/String;)I

    move-result v0

    .line 184
    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 186
    :cond_2
    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_3

    .line 188
    const-string v0, "mini_table_bottom_selector"

    invoke-static {v0}, Lg;->e(Ljava/lang/String;)I

    move-result v0

    .line 187
    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 191
    :cond_3
    const-string v0, "mini_table_center_selector"

    invoke-static {v0}, Lg;->e(Ljava/lang/String;)I

    move-result v0

    .line 190
    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method
