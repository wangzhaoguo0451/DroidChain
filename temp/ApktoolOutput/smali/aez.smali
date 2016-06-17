.class public abstract Laez;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alipay/wandoujia/sh;


# static fields
.field private static w:I


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Landroid/view/View;

.field d:Ljava/lang/Object;

.field e:Z

.field f:F

.field g:Ljava/lang/String;

.field h:Ljava/lang/String;

.field i:Z

.field j:Ljava/lang/String;

.field k:Ljava/lang/String;

.field l:Lafc;

.field public m:Lcom/alipay/wandoujia/rg;

.field public n:I

.field public o:Lcom/alipay/wandoujia/sg;

.field protected p:Z

.field private q:Ljava/lang/String;

.field private r:[I

.field private s:[I

.field private t:Z

.field private u:Z

.field private v:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x0

    sput v0, Laez;->w:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-boolean v1, p0, Laez;->p:Z

    .line 86
    new-array v0, v2, [I

    iput-object v0, p0, Laez;->r:[I

    .line 87
    new-array v0, v2, [I

    iput-object v0, p0, Laez;->s:[I

    .line 88
    iput-boolean v1, p0, Laez;->t:Z

    .line 89
    const/4 v0, 0x1

    iput-boolean v0, p0, Laez;->e:Z

    .line 90
    const/4 v0, -0x2

    iput v0, p0, Laez;->n:I

    .line 91
    iput-boolean v1, p0, Laez;->u:Z

    .line 92
    iput-boolean v1, p0, Laez;->i:Z

    .line 93
    return-void
.end method

.method static synthetic a(Laez;)Z
    .locals 1
    .parameter

    .prologue
    .line 75
    iget-boolean v0, p0, Laez;->u:Z

    return v0
.end method

.method static synthetic b(Laez;)V
    .locals 1
    .parameter

    .prologue
    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Laez;->u:Z

    return-void
.end method


# virtual methods
.method protected abstract a()I
.end method

.method public final a(Landroid/app/Activity;Landroid/view/ViewGroup;Z)Landroid/view/View;
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 220
    iput-boolean p3, p0, Laez;->p:Z

    .line 221
    iget-object v0, p0, Laez;->c:Landroid/view/View;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Laez;->a()I

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 223
    invoke-virtual {p0}, Laez;->a()I

    move-result v2

    invoke-virtual {v0, v2, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Laez;->c:Landroid/view/View;

    .line 225
    :cond_0
    iget-boolean v0, p0, Laez;->e:Z

    if-eqz v0, :cond_4

    move v0, v1

    .line 226
    :goto_0
    iget-object v2, p0, Laez;->c:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 227
    iget-object v0, p0, Laez;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 228
    if-eqz v0, :cond_1

    .line 229
    iget v2, p0, Laez;->n:I

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 231
    :cond_1
    iget-boolean v0, p0, Laez;->t:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Laez;->c:Landroid/view/View;

    iget-object v2, p0, Laez;->s:[I

    aget v2, v2, v6

    iget-object v3, p0, Laez;->s:[I

    aget v3, v3, v1

    iget-object v4, p0, Laez;->s:[I

    aget v4, v4, v8

    iget-object v5, p0, Laez;->s:[I

    aget v5, v5, v7

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 232
    :cond_2
    iget-object v0, p0, Laez;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v2, v0, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v2, :cond_5

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v2, p0, Laez;->r:[I

    aget v2, v2, v6

    iget-object v3, p0, Laez;->r:[I

    aget v1, v3, v1

    iget-object v3, p0, Laez;->r:[I

    aget v3, v3, v8

    iget-object v4, p0, Laez;->r:[I

    aget v4, v4, v7

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 234
    :cond_3
    :goto_1
    :try_start_0
    iget-object v0, p0, Laez;->c:Landroid/view/View;

    invoke-virtual {p0, p1, v0}, Laez;->a(Landroid/app/Activity;Landroid/view/View;)V
    :try_end_0
    .catch Lcom/alipay/android/app/exception/AppErrorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    :goto_2
    iget-object v0, p0, Laez;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 239
    new-instance v1, Lafb;

    invoke-direct {v1, p0}, Lafb;-><init>(Laez;)V

    .line 238
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 248
    sget v0, Laez;->w:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Laez;->w:I

    .line 249
    iget-object v0, p0, Laez;->c:Landroid/view/View;

    sget v1, Laez;->w:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 250
    iget-object v0, p0, Laez;->c:Landroid/view/View;

    return-object v0

    .line 225
    :cond_4
    const/16 v0, 0x8

    goto :goto_0

    .line 232
    :cond_5
    instance-of v2, v0, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v2, :cond_3

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v2, p0, Laez;->r:[I

    aget v2, v2, v6

    iget-object v3, p0, Laez;->r:[I

    aget v1, v3, v1

    iget-object v3, p0, Laez;->r:[I

    aget v3, v3, v8

    iget-object v4, p0, Laez;->r:[I

    aget v4, v4, v7

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_1

    .line 236
    :catch_0
    move-exception v0

    invoke-static {v0}, Ld;->b(Ljava/lang/Object;)V

    goto :goto_2
.end method

.method public a(IIII)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 270
    iget-object v0, p0, Laez;->r:[I

    const/4 v1, 0x0

    aput p2, v0, v1

    .line 271
    iget-object v0, p0, Laez;->r:[I

    const/4 v1, 0x3

    aput p3, v0, v1

    .line 272
    iget-object v0, p0, Laez;->r:[I

    const/4 v1, 0x2

    aput p4, v0, v1

    .line 273
    iget-object v0, p0, Laez;->r:[I

    const/4 v1, 0x1

    aput p1, v0, v1

    .line 275
    return-void
.end method

.method protected abstract a(Landroid/app/Activity;Landroid/view/View;)V
.end method

.method protected final a(Ljava/lang/Object;Ladu;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 109
    iget-object v0, p0, Laez;->m:Lcom/alipay/wandoujia/rg;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Laez;->m:Lcom/alipay/wandoujia/rg;

    invoke-interface {v0, p1, p2}, Lcom/alipay/wandoujia/rg;->a(Ljava/lang/Object;Lcom/alipay/wandoujia/db;)Z

    .line 112
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 266
    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 126
    const-string v0, "name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Laez;->a:Ljava/lang/String;

    .line 127
    const-string v0, "value"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Laez;->d:Ljava/lang/Object;

    .line 128
    const-string v0, "display"

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Laez;->e:Z

    .line 130
    const-string v0, "size"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 129
    invoke-static {v0}, Lafz;->c(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Laez;->f:F

    .line 131
    const-string v0, "color"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Laez;->g:Ljava/lang/String;

    .line 132
    const-string v0, "tip"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 133
    const-string v0, "hint"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Laez;->h:Ljava/lang/String;

    .line 134
    const-string v0, "underline"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Laez;->i:Z

    .line 135
    const-string v0, "crossline"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 136
    const-string v0, "overline"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 137
    const-string v0, "default"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Laez;->j:Ljava/lang/String;

    .line 138
    const-string v0, "image"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Laez;->k:Ljava/lang/String;

    .line 139
    const-string v0, "action"

    invoke-static {p1, v0}, Lafc;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lafc;

    move-result-object v0

    iput-object v0, p0, Laez;->l:Lafc;

    .line 140
    const-string v0, "align"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Laez;->v:Ljava/lang/String;

    .line 141
    const-string v0, "params"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Laez;->b:Ljava/lang/String;

    .line 142
    const-string v0, "padding"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 143
    const-string v1, "margin"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Laez;->q:Ljava/lang/String;

    .line 144
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 145
    iput-boolean v2, p0, Laez;->t:Z

    .line 146
    invoke-static {v0}, Lafz;->d(Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Laez;->s:[I

    .line 148
    :cond_0
    iget-object v0, p0, Laez;->q:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 149
    iget-object v0, p0, Laez;->q:Ljava/lang/String;

    invoke-static {v0}, Lafz;->e(Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Laez;->r:[I

    .line 152
    :cond_1
    return-void
.end method

.method public synthetic b(Landroid/app/Activity;Landroid/view/ViewGroup;Z)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2, p3}, Laez;->a(Landroid/app/Activity;Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Laez;->c:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Laez;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 122
    :cond_0
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Laez;->a:Ljava/lang/String;

    return-object v0
.end method

.method protected d()V
    .locals 0

    .prologue
    .line 284
    return-void
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 255
    const/4 v0, 0x1

    return v0
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 260
    const/4 v0, 0x1

    return v0
.end method

.method public i()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 304
    iput-object v1, p0, Laez;->c:Landroid/view/View;

    .line 305
    iget-object v0, p0, Laez;->m:Lcom/alipay/wandoujia/rg;

    if-eqz v0, :cond_0

    .line 306
    iput-object v1, p0, Laez;->m:Lcom/alipay/wandoujia/rg;

    .line 308
    :cond_0
    return-void
.end method

.method protected final j()Lorg/json/JSONObject;
    .locals 2

    .prologue
    .line 203
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Laez;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    :goto_0
    return-object v0

    .line 207
    :catch_0
    move-exception v0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    goto :goto_0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Laez;->v:Ljava/lang/String;

    return-object v0
.end method
