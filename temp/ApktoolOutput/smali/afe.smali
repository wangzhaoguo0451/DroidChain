.class public final Lafe;
.super Ladx;
.source "SourceFile"

# interfaces
.implements Lcom/alipay/wandoujia/rb;


# instance fields
.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Landroid/view/ViewGroup;

.field private h:Z

.field private i:Landroid/widget/ScrollView;

.field private j:I


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ladx;-><init>()V

    .line 57
    return-void
.end method

.method static synthetic a(Lafe;)Landroid/widget/ScrollView;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lafe;->i:Landroid/widget/ScrollView;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/app/Activity;Landroid/view/ViewGroup;Z)Landroid/view/ViewGroup;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 92
    iget-object v0, p0, Lafe;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 93
    iget-object v0, p0, Lafe;->f:Ljava/lang/String;

    const-string v1, "scroll"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 94
    const/4 v0, 0x1

    iput-boolean v0, p0, Lafe;->h:Z

    .line 95
    iget-object v0, p0, Lafe;->i:Landroid/widget/ScrollView;

    if-nez v0, :cond_0

    .line 96
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 98
    const-string v1, "mini_ui_scroll"

    invoke-static {v1}, Lg;->f(Ljava/lang/String;)I

    move-result v1

    .line 97
    invoke-virtual {v0, v1, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lafe;->i:Landroid/widget/ScrollView;

    .line 102
    :cond_0
    iget-object v0, p0, Lafe;->i:Landroid/widget/ScrollView;

    invoke-super {p0, p1, v0, p3}, Ladx;->a(Landroid/app/Activity;Landroid/view/ViewGroup;Z)Landroid/view/ViewGroup;

    move-result-object v0

    .line 103
    invoke-virtual {v0, v4, v4}, Landroid/view/ViewGroup;->measure(II)V

    .line 104
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    iput v1, p0, Lafe;->j:I

    .line 105
    iget-object v1, p0, Lafe;->i:Landroid/widget/ScrollView;

    if-eqz v1, :cond_1

    .line 106
    iget-object v1, p0, Lafe;->i:Landroid/widget/ScrollView;

    invoke-virtual {v1}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 107
    if-eqz v1, :cond_1

    iget v2, p0, Lafe;->j:I

    if-lez v2, :cond_1

    .line 108
    iget v2, p0, Lafe;->j:I

    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ge v2, v3, :cond_1

    .line 109
    iget v2, p0, Lafe;->j:I

    .line 110
    iget-object v3, p0, Lafe;->i:Landroid/widget/ScrollView;

    invoke-virtual {v3}, Landroid/widget/ScrollView;->getPaddingTop()I

    move-result v3

    add-int/2addr v2, v3

    .line 111
    iget-object v3, p0, Lafe;->i:Landroid/widget/ScrollView;

    invoke-virtual {v3}, Landroid/widget/ScrollView;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    .line 109
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 114
    :cond_1
    iget-object v1, p0, Lafe;->i:Landroid/widget/ScrollView;

    invoke-virtual {v1, v0}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 115
    iget-object v0, p0, Lafe;->i:Landroid/widget/ScrollView;

    invoke-virtual {v0, v4, v4}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    .line 116
    iget-object v0, p0, Lafe;->i:Landroid/widget/ScrollView;

    .line 119
    :goto_0
    return-object v0

    :cond_2
    invoke-super {p0, p1, p2, p3}, Ladx;->a(Landroid/app/Activity;Landroid/view/ViewGroup;Z)Landroid/view/ViewGroup;

    move-result-object v0

    goto :goto_0
.end method

.method protected final a(Landroid/view/ViewGroup$LayoutParams;IIII)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 126
    iget-object v0, p0, Lafe;->i:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move v4, v2

    move v5, v2

    .line 127
    invoke-super/range {v0 .. v5}, Ladx;->a(Landroid/view/ViewGroup$LayoutParams;IIII)V

    .line 128
    iget-object v0, p0, Lafe;->i:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-super/range {v0 .. v5}, Ladx;->a(Landroid/view/ViewGroup$LayoutParams;IIII)V

    .line 132
    :goto_0
    return-void

    .line 130
    :cond_0
    invoke-super/range {p0 .. p5}, Ladx;->a(Landroid/view/ViewGroup$LayoutParams;IIII)V

    goto :goto_0
.end method

.method public final a(Landroid/view/ViewGroup;Landroid/app/Activity;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 147
    iput-object p1, p0, Lafe;->g:Landroid/view/ViewGroup;

    .line 148
    iget-object v0, p0, Lafe;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 149
    iget-object v0, p0, Lafe;->c:Ljava/lang/String;

    new-instance v1, Laff;

    invoke-direct {v1, p0, p1}, Laff;-><init>(Lafe;Landroid/view/ViewGroup;)V

    invoke-static {v0, v1}, Lafz;->a(Ljava/lang/String;Ladj;)V

    .line 187
    :cond_0
    :goto_0
    iget-object v0, p0, Lafe;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 189
    iget-object v0, p0, Lafe;->i:Landroid/widget/ScrollView;

    if-eqz v0, :cond_4

    .line 190
    iget-object v0, p0, Lafe;->i:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 194
    :goto_1
    iget-object v1, p0, Lafe;->e:Ljava/lang/String;

    invoke-static {v1, p2}, Lafz;->a(Ljava/lang/String;Landroid/app/Activity;)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 196
    :cond_1
    iget-boolean v0, p0, Lafe;->h:Z

    if-eqz v0, :cond_2

    .line 197
    iget-object v0, p0, Lafe;->i:Landroid/widget/ScrollView;

    iput-object v0, p0, Lafe;->g:Landroid/view/ViewGroup;

    .line 200
    :cond_2
    return-void

    .line 177
    :cond_3
    iget-object v0, p0, Lafe;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 181
    :try_start_0
    iget-object v0, p0, Lafe;->d:Ljava/lang/String;

    invoke-static {v0}, Lafz;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setBackgroundColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 183
    :catch_0
    move-exception v0

    invoke-static {v0}, Ld;->b(Ljava/lang/Object;)V

    goto :goto_0

    .line 192
    :cond_4
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    goto :goto_1
.end method

.method public final a(Lorg/json/JSONObject;)V
    .locals 1
    .parameter

    .prologue
    .line 61
    invoke-super {p0, p1}, Ladx;->a(Lorg/json/JSONObject;)V

    .line 62
    const-string v0, "image"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    const-string v0, "image"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lafe;->c:Ljava/lang/String;

    .line 66
    :cond_0
    const-string v0, "color"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    const-string v0, "color"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lafe;->d:Ljava/lang/String;

    .line 69
    :cond_1
    const-string v0, "height"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 70
    const-string v0, "height"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lafe;->e:Ljava/lang/String;

    .line 72
    :cond_2
    const-string v0, "overflow"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 73
    const-string v0, "overflow"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lafe;->f:Ljava/lang/String;

    .line 75
    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lafe;->h:Z

    .line 77
    return-void
.end method

.method public final a()Z
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 204
    iget-boolean v2, p0, Lafe;->h:Z

    if-eqz v2, :cond_0

    .line 205
    iget-object v2, p0, Lafe;->i:Landroid/widget/ScrollView;

    iput-object v2, p0, Lafe;->g:Landroid/view/ViewGroup;

    .line 207
    :cond_0
    iget-object v2, p0, Lafe;->g:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v2

    if-ne v2, v3, :cond_1

    .line 208
    iget-object v2, p0, Lafe;->g:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 214
    :goto_0
    return v0

    .line 210
    :cond_1
    iget-object v2, p0, Lafe;->g:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    .line 211
    iget-object v1, p0, Lafe;->g:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 214
    goto :goto_0
.end method

.method protected final b()I
    .locals 1

    .prologue
    .line 86
    const-string v0, "mini_ui_block"

    invoke-static {v0}, Lg;->f(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected final b(IIII)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 136
    iget-object v0, p0, Lafe;->i:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lafe;->i:Landroid/widget/ScrollView;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->setPadding(IIII)V

    .line 142
    :goto_0
    return-void

    .line 139
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Ladx;->b(IIII)V

    goto :goto_0
.end method

.method public final i()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 219
    invoke-super {p0}, Ladx;->i()V

    .line 220
    iput-object v0, p0, Lafe;->i:Landroid/widget/ScrollView;

    .line 221
    iput-object v0, p0, Lafe;->g:Landroid/view/ViewGroup;

    .line 222
    return-void
.end method

.method public final o()Ljava/lang/String;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lafe;->e:Ljava/lang/String;

    return-object v0
.end method
