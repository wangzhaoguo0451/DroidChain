.class final Lfnm;
.super Ljava/lang/Object;
.source "CommunitySortUtils.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lffw;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;)Z
    .locals 3
    .parameter

    .prologue
    .line 43
    if-eqz p0, :cond_1

    .line 44
    invoke-virtual {p0}, Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;->getSubjectIds()Ljava/util/List;

    move-result-object v0

    .line 45
    if-eqz v0, :cond_1

    .line 46
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 47
    invoke-static {}, Lcom/wandoujia/appmanager/AppManager;->a()Lcom/wandoujia/appmanager/AppManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/wandoujia/appmanager/AppManager;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    const/4 v0, 0x1

    .line 53
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 19
    check-cast p1, Lffw;

    check-cast p2, Lffw;

    if-eqz p1, :cond_5

    if-eqz p2, :cond_5

    iget-object v3, p1, Lffw;->a:Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v3, p2, Lffw;->a:Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;

    if-nez v3, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v3, p1, Lffw;->a:Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;

    invoke-static {v3}, Lfnm;->a(Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p2, Lffw;->a:Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;

    invoke-static {v3}, Lfnm;->a(Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;)Z

    move-result v3

    if-nez v3, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v1, p1, Lffw;->a:Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;

    invoke-static {v1}, Lfnm;->a(Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p2, Lffw;->a:Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;

    invoke-static {v1}, Lfnm;->a(Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_4
    move v0, v2

    goto :goto_0

    :cond_5
    move v0, v2

    goto :goto_0
.end method
