.class public final Ldnc;
.super Lhic;
.source "FavoritableButtonPresenter.java"


# instance fields
.field final a:Landroid/content/Context;

.field b:Lgcd;

.field private c:Lcom/wandoujia/ripple_framework/model/Model;

.field private d:I

.field private e:I

.field private j:Ldne;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ldnc;-><init>(Landroid/content/Context;B)V

    .line 35
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;B)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const v1, 0x7f0202e0

    const v0, 0x7f0202df

    .line 39
    invoke-direct {p0}, Lhic;-><init>()V

    .line 28
    iput v0, p0, Ldnc;->d:I

    .line 29
    iput v1, p0, Ldnc;->e:I

    .line 40
    iput-object p1, p0, Ldnc;->a:Landroid/content/Context;

    .line 41
    iput v0, p0, Ldnc;->d:I

    .line 42
    iput v1, p0, Ldnc;->e:I

    .line 43
    new-instance v0, Ldne;

    invoke-direct {v0}, Ldne;-><init>()V

    iput-object v0, p0, Ldnc;->j:Ldne;

    .line 44
    invoke-static {}, Lcom/wandoujia/p4/subscribe/core/SubscribeManager;->a()Lcom/wandoujia/p4/subscribe/core/SubscribeManager;

    move-result-object v0

    iget-object v1, p0, Ldnc;->j:Ldne;

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/subscribe/core/SubscribeManager;->a(Lgcj;)V

    .line 45
    return-void
.end method

.method static synthetic a(Ldnc;Lgcd;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Ldnc;->b:Lgcd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldnc;->b:Lgcd;

    invoke-virtual {v0}, Lgcd;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lgcd;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Ldnc;->b()V

    :cond_0
    return-void
.end method

.method private b()V
    .locals 2

    .prologue
    .line 106
    invoke-virtual {p0}, Ldnc;->e()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Ldnc;->c:Lcom/wandoujia/ripple_framework/model/Model;

    invoke-static {v1}, Ldux;->b(Lcom/wandoujia/ripple_framework/model/Model;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Ldnc;->e:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 108
    return-void

    .line 106
    :cond_0
    iget v1, p0, Ldnc;->d:I

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 81
    iget-object v0, p0, Ldnc;->j:Ldne;

    iput-object v1, v0, Ldne;->a:Ldnc;

    .line 82
    iput-object v1, p0, Ldnc;->b:Lgcd;

    .line 83
    invoke-super {p0}, Lhic;->a()V

    .line 84
    return-void
.end method

.method protected final a(Lcom/wandoujia/ripple_framework/model/Model;)V
    .locals 2
    .parameter

    .prologue
    .line 49
    if-nez p1, :cond_0

    .line 77
    :goto_0
    return-void

    .line 52
    :cond_0
    iput-object p1, p0, Ldnc;->c:Lcom/wandoujia/ripple_framework/model/Model;

    .line 53
    iget-object v0, p0, Ldnc;->b:Lgcd;

    if-nez v0, :cond_1

    .line 54
    new-instance v0, Lded;

    iget-object v1, p0, Ldnc;->a:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lded;-><init>(Landroid/content/Context;Lcom/wandoujia/ripple_framework/model/Model;)V

    iput-object v0, p0, Ldnc;->b:Lgcd;

    .line 55
    iget-object v0, p0, Ldnc;->j:Ldne;

    iput-object p0, v0, Ldne;->a:Ldnc;

    .line 58
    :cond_1
    invoke-virtual {p0}, Ldnc;->e()Landroid/view/View;

    move-result-object v0

    new-instance v1, Ldnd;

    invoke-direct {v1, p0, p1}, Ldnd;-><init>(Ldnc;Lcom/wandoujia/ripple_framework/model/Model;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    invoke-direct {p0}, Ldnc;->b()V

    goto :goto_0
.end method
