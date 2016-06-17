.class public final Lfmy;
.super Ljava/lang/Thread;
.source "CommunityImageUploader.java"


# instance fields
.field public final a:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lfmz;

.field private d:I


# direct methods
.method public constructor <init>(Lfmz;)V
    .locals 1
    .parameter

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 27
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lfmy;->a:Ljava/util/Queue;

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lfmy;->b:Ljava/util/Map;

    .line 36
    iput-object p1, p0, Lfmy;->c:Lfmz;

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lfmy;->d:I

    .line 38
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .prologue
    .line 51
    :goto_0
    iget-object v1, p0, Lfmy;->a:Ljava/util/Queue;

    monitor-enter v1

    .line 54
    :try_start_0
    iget-object v0, p0, Lfmy;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 55
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    if-nez v0, :cond_1

    .line 58
    iget-object v0, p0, Lfmy;->c:Lfmz;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lfmy;->c:Lfmz;

    iget v1, p0, Lfmy;->d:I

    iget-object v2, p0, Lfmy;->a:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->size()I

    invoke-interface {v0, v1}, Lfmz;->a(I)V

    .line 61
    :cond_0
    return-void

    .line 55
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 64
    :cond_1
    invoke-static {v0}, Lcom/wandoujia/p4/community/utils/CommunityImageUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 65
    if-nez v1, :cond_2

    move-object v1, v0

    .line 68
    :cond_2
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v4, "Cookie"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "wdj_auth="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lchv;->i()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v1, "http://group.wandoujia.com/api/v1/file/image"

    invoke-static {v1, v2, v3, v4}, Lcom/wandoujia/p4/community/utils/CommunityImageUtils;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    .line 69
    const-string v2, "ugc"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "upload done loadingPath "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " cookies "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 72
    :try_start_2
    new-instance v2, Lcvo;

    invoke-direct {v2}, Lcvo;-><init>()V

    .line 73
    const-class v3, Lcom/wandoujia/p4/community/http/model/CommunityResponseInfo;

    invoke-virtual {v2, v1, v3}, Lcvo;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wandoujia/p4/community/http/model/CommunityResponseInfo;

    .line 75
    invoke-virtual {v1}, Lcom/wandoujia/p4/community/http/model/CommunityResponseInfo;->isDataValid()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 76
    iget-object v2, p0, Lfmy;->c:Lfmz;

    if-eqz v2, :cond_3

    .line 77
    iget-object v2, p0, Lfmy;->c:Lfmz;

    invoke-virtual {v1}, Lcom/wandoujia/p4/community/http/model/CommunityResponseInfo;->getMsg()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Lfmz;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    :cond_3
    iget-object v2, p0, Lfmy;->b:Ljava/util/Map;

    monitor-enter v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 81
    :try_start_3
    iget-object v3, p0, Lfmy;->b:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/wandoujia/p4/community/http/model/CommunityResponseInfo;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    monitor-exit v2

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 91
    :catch_0
    move-exception v0

    iget-object v0, p0, Lfmy;->c:Lfmz;

    if-eqz v0, :cond_4

    .line 95
    iget-object v0, p0, Lfmy;->c:Lfmz;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lfmz;->a(Ljava/lang/String;)V

    .line 97
    :cond_4
    iget v0, p0, Lfmy;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lfmy;->d:I

    goto/16 :goto_0

    .line 84
    :cond_5
    :try_start_5
    iget-object v0, p0, Lfmy;->c:Lfmz;

    if-eqz v0, :cond_6

    .line 85
    iget-object v0, p0, Lfmy;->c:Lfmz;

    invoke-virtual {v1}, Lcom/wandoujia/p4/community/http/model/CommunityResponseInfo;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lfmz;->a(Ljava/lang/String;)V

    .line 87
    :cond_6
    iget v0, p0, Lfmy;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lfmy;->d:I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0
.end method
