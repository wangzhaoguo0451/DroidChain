.class public final Lezb;
.super Legg;
.source "ALUpgradeCell.java"


# instance fields
.field private a:Lfao;

.field private final g:Lcom/wandoujia/appmanager/LocalAppChangedListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Legg;-><init>()V

    .line 64
    new-instance v0, Lezd;

    invoke-direct {v0, p0}, Lezd;-><init>(Lezb;)V

    iput-object v0, p0, Lezb;->g:Lcom/wandoujia/appmanager/LocalAppChangedListener;

    return-void
.end method

.method static synthetic a(Lezb;)Lfao;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lezb;->a:Lfao;

    return-object v0
.end method

.method static synthetic d()I
    .locals 1

    .prologue
    .line 24
    invoke-static {}, Lezb;->e()I

    move-result v0

    return v0
.end method

.method private static e()I
    .locals 3

    .prologue
    .line 54
    invoke-static {}, Lcom/wandoujia/appmanager/AppManager;->a()Lcom/wandoujia/appmanager/AppManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/appmanager/AppManager;->i()Ljava/util/List;

    move-result-object v1

    .line 55
    const/4 v0, 0x0

    .line 56
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/appmanager/LocalAppInfo;

    .line 57
    invoke-virtual {v0}, Lcom/wandoujia/appmanager/LocalAppInfo;->isUpgradeIgnored()Z

    move-result v0

    if-nez v0, :cond_1

    .line 58
    add-int/lit8 v0, v1, 0x1

    :goto_1
    move v1, v0

    .line 60
    goto :goto_0

    .line 61
    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_1
.end method


# virtual methods
.method public final a(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 31
    if-nez p1, :cond_0

    .line 32
    invoke-static {}, Lcom/wandoujia/appmanager/AppManager;->a()Lcom/wandoujia/appmanager/AppManager;

    move-result-object v0

    iget-object v1, p0, Lezb;->g:Lcom/wandoujia/appmanager/LocalAppChangedListener;

    invoke-virtual {v0, v1}, Lcom/wandoujia/appmanager/AppManager;->a(Lcom/wandoujia/appmanager/LocalAppChangedListener;)V

    .line 33
    invoke-static {p2}, Lfao;->a(Landroid/view/ViewGroup;)Lfao;

    move-result-object v0

    .line 34
    invoke-static {}, Lezb;->e()I

    move-result v1

    .line 35
    iget-object v2, v0, Lfao;->a:Landroid/widget/TextView;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    invoke-virtual {v0}, Lfao;->getView()Landroid/view/View;

    move-result-object p1

    .line 37
    new-instance v1, Lezc;

    invoke-direct {v1}, Lezc;-><init>()V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    iput-object v0, p0, Lezb;->a:Lfao;

    .line 47
    :cond_0
    return-object p1
.end method
