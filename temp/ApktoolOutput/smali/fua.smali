.class public final Lfua;
.super Ljava/lang/Object;
.source "PickUpGiftAction.java"

# interfaces
.implements Lcom/wandoujia/mvc/Action;


# instance fields
.field private a:Lcom/wandoujia/p4/gift/http/model/GiftModel;

.field private final b:Landroid/app/Activity;

.field private c:Lcom/wandoujia/ripple_framework/model/Model;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/gift/http/model/GiftModel;Landroid/app/Activity;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lfua;-><init>(Lcom/wandoujia/ripple_framework/model/Model;Lcom/wandoujia/p4/gift/http/model/GiftModel;Landroid/app/Activity;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Lcom/wandoujia/ripple_framework/model/Model;Lcom/wandoujia/p4/gift/http/model/GiftModel;Landroid/app/Activity;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p2, p0, Lfua;->a:Lcom/wandoujia/p4/gift/http/model/GiftModel;

    .line 63
    iput-object p3, p0, Lfua;->b:Landroid/app/Activity;

    .line 64
    iput-object p1, p0, Lfua;->c:Lcom/wandoujia/ripple_framework/model/Model;

    .line 65
    return-void
.end method

.method static synthetic a(Lfua;)Landroid/app/Activity;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lfua;->b:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic b(Lfua;)Lcom/wandoujia/ripple_framework/model/Model;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lfua;->c:Lcom/wandoujia/ripple_framework/model/Model;

    return-object v0
.end method

.method static synthetic c(Lfua;)Lcom/wandoujia/p4/gift/http/model/GiftModel;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lfua;->a:Lcom/wandoujia/p4/gift/http/model/GiftModel;

    return-object v0
.end method


# virtual methods
.method public final execute()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const v7, 0x7f0e0349

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 73
    invoke-static {}, Lewb;->a()Lewb;

    move-result-object v1

    iget-object v0, v1, Lewb;->b:Ljava/util/Map;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v1, Lewb;->b:Ljava/util/Map;

    iget-object v0, v1, Lewb;->a:Ljava/util/Set;

    if-nez v0, :cond_0

    const-string v0, "gift_config"

    invoke-static {v0}, Lcom/wandoujia/p4/configs/Config;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcvo;

    invoke-direct {v2}, Lcvo;-><init>()V

    new-instance v3, Lewc;

    invoke-direct {v3}, Lewc;-><init>()V

    invoke-virtual {v3}, Lewc;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcvo;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    iput-object v0, v1, Lewb;->a:Ljava/util/Set;

    :cond_0
    iget-object v0, v1, Lewb;->a:Ljava/util/Set;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/gift/http/model/GiftModel;

    invoke-virtual {v0}, Lcom/wandoujia/p4/gift/http/model/GiftModel;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, v1, Lewb;->b:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/wandoujia/p4/gift/http/model/GiftModel;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iget-object v1, v1, Lewb;->b:Ljava/util/Map;

    .line 74
    iget-object v0, p0, Lfua;->a:Lcom/wandoujia/p4/gift/http/model/GiftModel;

    invoke-virtual {v0}, Lcom/wandoujia/p4/gift/http/model/GiftModel;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 75
    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "wdj://wechat/show_tips"

    iget-object v3, p0, Lfua;->a:Lcom/wandoujia/p4/gift/http/model/GiftModel;

    invoke-virtual {v3}, Lcom/wandoujia/p4/gift/http/model/GiftModel;->getSpecialAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 77
    iget-object v0, p0, Lfua;->b:Landroid/app/Activity;

    invoke-static {v0}, Ld;->u(Landroid/content/Context;)V

    .line 159
    :goto_1
    return-void

    .line 78
    :cond_3
    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lfua;->a:Lcom/wandoujia/p4/gift/http/model/GiftModel;

    invoke-virtual {v0}, Lcom/wandoujia/p4/gift/http/model/GiftModel;->getCdkey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lfua;->a:Lcom/wandoujia/p4/gift/http/model/GiftModel;

    invoke-virtual {v0}, Lcom/wandoujia/p4/gift/http/model/GiftModel;->getCdkey()Ljava/lang/String;

    move-result-object v0

    const-string v3, "http"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 81
    iget-object v3, p0, Lfua;->b:Landroid/app/Activity;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/gift/http/model/GiftModel;

    invoke-virtual {v0}, Lcom/wandoujia/p4/gift/http/model/GiftModel;->getCdkey()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/gift/http/model/GiftModel;

    invoke-virtual {v0}, Lcom/wandoujia/p4/gift/http/model/GiftModel;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v4, v0}, Ld;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 83
    :cond_4
    invoke-static {}, Lchv;->z()Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/wandoujia/p4/gift/view/model/GiftCardViewModelImpl$GiftType;->CDKEY:Lcom/wandoujia/p4/gift/view/model/GiftCardViewModelImpl$GiftType;

    invoke-virtual {v0}, Lcom/wandoujia/p4/gift/view/model/GiftCardViewModelImpl$GiftType;->getGiftType()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lfua;->a:Lcom/wandoujia/p4/gift/http/model/GiftModel;

    invoke-virtual {v1}, Lcom/wandoujia/p4/gift/http/model/GiftModel;->getProvideType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 85
    new-instance v0, Lhoq;

    iget-object v1, p0, Lfua;->b:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lhoq;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v5}, Lhoq;->a(Z)Lhoq;

    move-result-object v0

    .line 87
    iget-object v1, p0, Lfua;->b:Landroid/app/Activity;

    invoke-virtual {v1, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhoq;->a(Ljava/lang/CharSequence;)Lhoq;

    move-result-object v1

    iget-object v2, p0, Lfua;->b:Landroid/app/Activity;

    const v3, 0x7f0e034a

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lhoq;->b(Ljava/lang/CharSequence;)Lhoq;

    move-result-object v1

    iget-object v2, p0, Lfua;->b:Landroid/app/Activity;

    const v3, 0x7f0e0162

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v8}, Lhoq;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lhoq;

    move-result-object v1

    iget-object v2, p0, Lfua;->b:Landroid/app/Activity;

    const v3, 0x7f0e00c5

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lfuc;

    invoke-direct {v3, p0}, Lfuc;-><init>(Lfua;)V

    invoke-virtual {v1, v2, v3}, Lhoq;->c(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lhoq;

    move-result-object v1

    iget-object v2, p0, Lfua;->b:Landroid/app/Activity;

    const v3, 0x7f0e00c7

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lfub;

    invoke-direct {v3, p0}, Lfub;-><init>(Lfua;)V

    invoke-virtual {v1, v2, v3}, Lhoq;->a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lhoq;

    .line 120
    invoke-virtual {v0}, Lhoq;->b()Lhoj;

    move-result-object v0

    invoke-virtual {v0, v5}, Lhoj;->setCanceledOnTouchOutside(Z)V

    goto/16 :goto_1

    .line 121
    :cond_5
    sget-object v0, Lham;->f:Lham;

    const-string v1, "app"

    invoke-virtual {v0, v1}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/appmanager/AppManager;

    iget-object v1, p0, Lfua;->a:Lcom/wandoujia/p4/gift/http/model/GiftModel;

    invoke-virtual {v1}, Lcom/wandoujia/p4/gift/http/model/GiftModel;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wandoujia/appmanager/AppManager;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 124
    sget-object v0, Lcom/wandoujia/p4/gift/view/model/GiftCardViewModelImpl$GiftType;->CDKEY:Lcom/wandoujia/p4/gift/view/model/GiftCardViewModelImpl$GiftType;

    invoke-virtual {v0}, Lcom/wandoujia/p4/gift/view/model/GiftCardViewModelImpl$GiftType;->name()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lfua;->a:Lcom/wandoujia/p4/gift/http/model/GiftModel;

    invoke-virtual {v1}, Lcom/wandoujia/p4/gift/http/model/GiftModel;->getProvideType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 125
    new-instance v0, Lfue;

    invoke-direct {v0, p0, v6}, Lfue;-><init>(Lfua;B)V

    new-array v1, v6, [Ljava/lang/Void;

    invoke-static {v0, v1}, Ld;->a(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 127
    :cond_6
    sget-object v0, Lham;->f:Lham;

    const-string v1, "app"

    invoke-virtual {v0, v1}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lfua;->a:Lcom/wandoujia/p4/gift/http/model/GiftModel;

    invoke-virtual {v0}, Lcom/wandoujia/p4/gift/http/model/GiftModel;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/appmanager/AppManager;->b(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 132
    :cond_7
    iget-object v0, p0, Lfua;->b:Landroid/app/Activity;

    const v1, 0x7f0e0352

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 133
    sget-object v1, Lcom/wandoujia/p4/gift/view/model/GiftCardViewModelImpl$GiftType;->CDKEY:Lcom/wandoujia/p4/gift/view/model/GiftCardViewModelImpl$GiftType;

    invoke-virtual {v1}, Lcom/wandoujia/p4/gift/view/model/GiftCardViewModelImpl$GiftType;->getGiftType()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lfua;->a:Lcom/wandoujia/p4/gift/http/model/GiftModel;

    invoke-virtual {v2}, Lcom/wandoujia/p4/gift/http/model/GiftModel;->getProvideType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 134
    iget-object v0, p0, Lfua;->b:Landroid/app/Activity;

    const v1, 0x7f0e033d

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 136
    :cond_8
    new-instance v1, Lhoq;

    iget-object v2, p0, Lfua;->b:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lhoq;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lfua;->b:Landroid/app/Activity;

    invoke-virtual {v2, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lhoq;->a(Ljava/lang/CharSequence;)Lhoq;

    move-result-object v1

    invoke-virtual {v1, v0}, Lhoq;->b(Ljava/lang/CharSequence;)Lhoq;

    move-result-object v0

    iget-object v1, p0, Lfua;->b:Landroid/app/Activity;

    const v2, 0x7f0e0245

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v8}, Lhoq;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lhoq;

    move-result-object v0

    iget-object v1, p0, Lfua;->b:Landroid/app/Activity;

    const v2, 0x7f0e034d

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lfud;

    invoke-direct {v2, p0}, Lfud;-><init>(Lfua;)V

    invoke-virtual {v0, v1, v2}, Lhoq;->a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lhoq;

    move-result-object v0

    invoke-virtual {v0}, Lhoq;->b()Lhoj;

    move-result-object v0

    invoke-virtual {v0, v5}, Lhoj;->setCanceledOnTouchOutside(Z)V

    goto/16 :goto_1
.end method
