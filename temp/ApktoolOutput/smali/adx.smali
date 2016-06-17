.class public abstract Ladx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alipay/wandoujia/sg;


# instance fields
.field protected a:Ljava/util/List;

.field b:Z

.field private c:Landroid/view/ViewGroup;

.field private d:Ljava/lang/String;

.field private e:[I

.field private f:[I

.field private g:Z

.field private h:Z

.field private i:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-boolean v1, p0, Ladx;->b:Z

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ladx;->a:Ljava/util/List;

    .line 60
    new-array v0, v2, [I

    iput-object v0, p0, Ladx;->e:[I

    .line 61
    new-array v0, v2, [I

    iput-object v0, p0, Ladx;->f:[I

    .line 62
    iput-boolean v1, p0, Ladx;->g:Z

    .line 63
    iput-boolean v1, p0, Ladx;->h:Z

    .line 64
    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;Landroid/view/ViewGroup;Z)Landroid/view/ViewGroup;
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 122
    iget-object v0, p0, Ladx;->c:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    .line 123
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 124
    invoke-virtual {p0}, Ladx;->b()I

    move-result v1

    invoke-virtual {v0, v1, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Ladx;->c:Landroid/view/ViewGroup;

    .line 126
    const/4 v1, 0x0

    .line 127
    iget-object v0, p0, Ladx;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    move v2, v3

    move-object v4, v1

    .line 128
    :goto_0
    if-lt v2, v5, :cond_2

    .line 147
    iget-boolean v0, p0, Ladx;->g:Z

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Ladx;->f:[I

    aget v0, v0, v7

    iget-object v1, p0, Ladx;->f:[I

    aget v1, v1, v3

    iget-object v2, p0, Ladx;->f:[I

    aget v2, v2, v9

    iget-object v4, p0, Ladx;->f:[I

    aget v4, v4, v8

    invoke-virtual {p0, v0, v1, v2, v4}, Ladx;->b(IIII)V

    .line 150
    :cond_0
    iget-object v0, p0, Ladx;->c:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget-object v0, p0, Ladx;->e:[I

    aget v2, v0, v7

    iget-object v0, p0, Ladx;->e:[I

    aget v3, v0, v3

    .line 151
    iget-object v0, p0, Ladx;->e:[I

    aget v4, v0, v9

    iget-object v0, p0, Ladx;->e:[I

    aget v5, v0, v8

    move-object v0, p0

    .line 150
    invoke-virtual/range {v0 .. v5}, Ladx;->a(Landroid/view/ViewGroup$LayoutParams;IIII)V

    .line 153
    :try_start_0
    iget-object v0, p0, Ladx;->c:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, p1}, Ladx;->a(Landroid/view/ViewGroup;Landroid/app/Activity;)V
    :try_end_0
    .catch Lcom/alipay/android/app/exception/AppErrorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    :cond_1
    :goto_1
    iget-object v0, p0, Ladx;->c:Landroid/view/ViewGroup;

    return-object v0

    .line 129
    :cond_2
    iget-object v0, p0, Ladx;->a:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/wandoujia/sh;

    .line 130
    iget-object v1, p0, Ladx;->c:Landroid/view/ViewGroup;

    invoke-interface {v0, p1, v1, p3}, Lcom/alipay/wandoujia/sh;->b(Landroid/app/Activity;Landroid/view/ViewGroup;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 131
    iget-boolean v6, p0, Ladx;->b:Z

    if-eqz v6, :cond_3

    .line 132
    if-nez v2, :cond_4

    .line 134
    const-string v6, "mini_block_not_margin_top_bg"

    invoke-static {v6}, Lg;->e(Ljava/lang/String;)I

    move-result v6

    .line 133
    invoke-virtual {v1, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 143
    :cond_3
    :goto_2
    invoke-interface {v0}, Lcom/alipay/wandoujia/sh;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v4, v1, v0}, Ladx;->a(Landroid/view/View;Landroid/view/View;Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Ladx;->c:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 128
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move-object v4, v1

    goto :goto_0

    .line 135
    :cond_4
    add-int/lit8 v6, v5, -0x1

    if-ne v2, v6, :cond_5

    .line 137
    const-string v6, "mini_block_not_margin_bottom_bg"

    invoke-static {v6}, Lg;->e(Ljava/lang/String;)I

    move-result v6

    .line 136
    invoke-virtual {v1, v6}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_2

    .line 140
    :cond_5
    const-string v6, "mini_block_not_margin_middle_bg"

    invoke-static {v6}, Lg;->e(Ljava/lang/String;)I

    move-result v6

    .line 139
    invoke-virtual {v1, v6}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_2

    .line 155
    :catch_0
    move-exception v0

    invoke-static {v0}, Ld;->b(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public a(IIII)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 257
    return-void
.end method

.method protected a(Landroid/view/View;Landroid/view/View;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 164
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 165
    invoke-static {p3}, Lcom/alipay/wandoujia/tb;->valueOf(Ljava/lang/String;)Lcom/alipay/wandoujia/tb;

    move-result-object v1

    .line 167
    const/16 v0, 0x9

    .line 169
    invoke-virtual {v1}, Lcom/alipay/wandoujia/tb;->a()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 202
    const/4 v1, 0x3

    move v2, v1

    move v1, v0

    .line 205
    :goto_0
    iget-object v0, p0, Ladx;->c:Landroid/view/ViewGroup;

    instance-of v0, v0, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 207
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 206
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 208
    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 220
    :cond_0
    :goto_1
    return-void

    .line 171
    :pswitch_0
    const/4 v1, 0x5

    .line 172
    const/16 v0, 0xb

    move v2, v1

    move v1, v0

    .line 173
    goto :goto_0

    .line 176
    :pswitch_1
    const/16 v1, 0x30

    .line 177
    const/16 v0, 0xa

    move v2, v1

    move v1, v0

    .line 178
    goto :goto_0

    .line 181
    :pswitch_2
    const/16 v1, 0x50

    .line 182
    const/16 v0, 0xc

    move v2, v1

    move v1, v0

    .line 183
    goto :goto_0

    .line 186
    :pswitch_3
    const/16 v1, 0x10

    .line 187
    const/16 v0, 0xf

    move v2, v1

    move v1, v0

    .line 188
    goto :goto_0

    .line 191
    :pswitch_4
    const/4 v1, 0x1

    .line 192
    const/16 v0, 0xe

    move v2, v1

    move v1, v0

    .line 193
    goto :goto_0

    .line 196
    :pswitch_5
    const/16 v1, 0x11

    .line 197
    const/16 v0, 0xd

    move v2, v1

    move v1, v0

    .line 198
    goto :goto_0

    .line 209
    :cond_1
    iget-object v0, p0, Ladx;->c:Landroid/view/ViewGroup;

    instance-of v0, v0, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_2

    .line 211
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 210
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 212
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_1

    .line 213
    :cond_2
    iget-object v0, p0, Ladx;->c:Landroid/view/ViewGroup;

    instance-of v0, v0, Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 215
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 214
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 216
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_1

    .line 169
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected a(Landroid/view/ViewGroup$LayoutParams;IIII)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 266
    iget-boolean v0, p0, Ladx;->h:Z

    if-eqz v0, :cond_0

    .line 267
    instance-of v0, p1, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v0, :cond_1

    .line 268
    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 278
    :cond_0
    :goto_0
    return-void

    .line 270
    :cond_1
    instance-of v0, p1, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v0, :cond_2

    .line 271
    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    .line 273
    :cond_2
    instance-of v0, p1, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v0, :cond_0

    .line 274
    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 275
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0
.end method

.method protected abstract a(Landroid/view/ViewGroup;Landroid/app/Activity;)V
.end method

.method public a(Lcom/alipay/wandoujia/sh;)V
    .locals 1
    .parameter

    .prologue
    .line 231
    iget-object v0, p0, Ladx;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 247
    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 87
    const-string v0, "name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ladx;->d:Ljava/lang/String;

    .line 88
    const-string v0, "type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 89
    const-string v0, "content"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ladx;->i:Ljava/lang/String;

    .line 90
    const-string v0, "padding"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 91
    const-string v1, "margin"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 92
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 93
    iput-boolean v3, p0, Ladx;->g:Z

    .line 94
    invoke-static {v0}, Lafz;->d(Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Ladx;->f:[I

    .line 96
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 97
    iput-boolean v3, p0, Ladx;->h:Z

    .line 98
    invoke-static {v1}, Lafz;->e(Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Ladx;->e:[I

    .line 101
    :cond_1
    const-string v0, "together"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 102
    const-string v0, "together"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Ladx;->b:Z

    .line 105
    :cond_2
    return-void
.end method

.method protected abstract b()I
.end method

.method public synthetic b(Landroid/app/Activity;Landroid/view/ViewGroup;Z)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2, p3}, Ladx;->a(Landroid/app/Activity;Landroid/view/ViewGroup;Z)Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method protected b(IIII)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 281
    iget-object v0, p0, Ladx;->c:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 282
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Ladx;->d:Ljava/lang/String;

    return-object v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x0

    return v0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 236
    const/4 v0, 0x1

    return v0
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 241
    const/4 v0, 0x1

    return v0
.end method

.method public final h()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 251
    const/4 v0, 0x0

    return-object v0
.end method

.method public i()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 286
    iget-object v0, p0, Ladx;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 289
    iput-object v2, p0, Ladx;->c:Landroid/view/ViewGroup;

    .line 290
    iput-object v2, p0, Ladx;->a:Ljava/util/List;

    .line 291
    return-void

    .line 286
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/wandoujia/sh;

    .line 287
    invoke-interface {v0}, Lcom/alipay/wandoujia/sh;->i()V

    goto :goto_0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 295
    const/4 v0, 0x0

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Ladx;->i:Ljava/lang/String;

    return-object v0
.end method

.method public m()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 305
    const/4 v0, 0x0

    return-object v0
.end method
