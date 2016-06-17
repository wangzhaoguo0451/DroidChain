.class final Lfdr;
.super Ljava/lang/Object;
.source "CommunityNominateGroupAction.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lfdq;


# direct methods
.method private constructor <init>(Lfdq;)V
    .locals 0
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lfdr;->a:Lfdq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lfdq;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lfdr;-><init>(Lfdq;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    .line 69
    iget-object v0, p0, Lfdr;->a:Lfdq;

    invoke-static {v0}, Lfdq;->a(Lfdq;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/p4/community/utils/CommunityImageUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 70
    if-nez v0, :cond_0

    .line 71
    iget-object v0, p0, Lfdr;->a:Lfdq;

    invoke-static {v0}, Lfdq;->a(Lfdq;)Ljava/lang/String;

    move-result-object v0

    .line 73
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 74
    const-string v2, "title"

    iget-object v3, p0, Lfdr;->a:Lfdq;

    invoke-static {v3}, Lfdq;->b(Lfdq;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    const-string v2, "description"

    iget-object v3, p0, Lfdr;->a:Lfdq;

    invoke-static {v3}, Lfdq;->c(Lfdq;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    const-string v2, "subjectType"

    iget-object v3, p0, Lfdr;->a:Lfdq;

    invoke-static {v3}, Lfdq;->d(Lfdq;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    const-string v2, "nominate"

    const-string v3, "1"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 79
    const-string v3, "Cookie"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "wdj_auth="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lchv;->i()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 81
    const-string v0, "http://group.wandoujia.com/api/v1/groups/add"

    invoke-static {v0, v1, v2, v3}, Lcom/wandoujia/p4/community/utils/CommunityImageUtils;->b(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 82
    invoke-static {v0}, Lfdq;->a(Ljava/lang/String;)Z

    move-result v1

    .line 83
    const-string v2, "ugc"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Nominate Group result: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    invoke-static {}, Ld;->B()Lhrx;

    move-result-object v2

    new-instance v3, Lcom/wandoujia/p4/community/eventbus/CommunityEvent;

    sget-object v4, Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;->BALLOT_NEW:Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;

    invoke-direct {v3, v4, v1, v0}, Lcom/wandoujia/p4/community/eventbus/CommunityEvent;-><init>(Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;ZLjava/lang/Object;)V

    invoke-virtual {v2, v3}, Lhrx;->d(Ljava/lang/Object;)V

    .line 85
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lfds;

    invoke-direct {v1, p0}, Lfds;-><init>(Lfdr;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 94
    return-void
.end method
