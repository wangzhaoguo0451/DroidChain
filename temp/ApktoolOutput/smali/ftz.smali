.class public final Lftz;
.super Ljava/lang/Object;
.source "OpenGiftDetailAction.java"

# interfaces
.implements Lcom/wandoujia/mvc/Action;


# instance fields
.field private final a:Lcom/wandoujia/p4/gift/http/model/GiftModel;

.field private final b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/gift/http/model/GiftModel;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lftz;->a:Lcom/wandoujia/p4/gift/http/model/GiftModel;

    .line 22
    iput-object p2, p0, Lftz;->b:Landroid/content/Context;

    .line 23
    return-void
.end method


# virtual methods
.method public final execute()V
    .locals 6

    .prologue
    .line 27
    const-string v0, "http://apis.wandoujia.com/apps/v1/%s/gift/%s?format=proto"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lftz;->a:Lcom/wandoujia/p4/gift/http/model/GiftModel;

    invoke-virtual {v3}, Lcom/wandoujia/p4/gift/http/model/GiftModel;->getPackageName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lftz;->a:Lcom/wandoujia/p4/gift/http/model/GiftModel;

    invoke-virtual {v3}, Lcom/wandoujia/p4/gift/http/model/GiftModel;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 29
    new-instance v1, Lcom/wandoujia/api/proto/Action$Builder;

    invoke-direct {v1}, Lcom/wandoujia/api/proto/Action$Builder;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "wdj://apps/gifts/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lftz;->a:Lcom/wandoujia/p4/gift/http/model/GiftModel;

    invoke-virtual {v3}, Lcom/wandoujia/p4/gift/http/model/GiftModel;->getId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/wandoujia/api/proto/Action$Builder;->intent(Ljava/lang/String;)Lcom/wandoujia/api/proto/Action$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/wandoujia/api/proto/Action$Builder;->url(Ljava/lang/String;)Lcom/wandoujia/api/proto/Action$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/api/proto/Action$Builder;->build()Lcom/wandoujia/api/proto/Action;

    move-result-object v1

    .line 33
    sget-object v0, Lham;->f:Lham;

    const-string v2, "navigation"

    invoke-virtual {v0, v2}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/jupiter/navigation/NavigationManager;

    iget-object v2, p0, Lftz;->b:Landroid/content/Context;

    invoke-virtual {v0, v2, v1}, Lcom/wandoujia/jupiter/navigation/NavigationManager;->a(Landroid/content/Context;Lcom/wandoujia/api/proto/Action;)V

    .line 35
    return-void
.end method
