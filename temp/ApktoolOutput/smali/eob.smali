.class public final Leob;
.super Ljava/lang/Object;
.source "LogTreeProcessor.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    return-void
.end method

.method private a(Leoa;Lenl;Lcom/wandoujia/logv3/model/packages/UrlPackage$Builder;)Leoj;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 79
    iget-object v0, p1, Leoa;->b:Leoj;

    if-eqz v0, :cond_0

    iget-object v0, p1, Leoa;->b:Leoj;

    iget-object v0, v0, Leoj;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 81
    iget-object v0, p1, Leoa;->b:Leoj;

    iget-object v1, p2, Lenl;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    :cond_0
    iget-object v0, p1, Leoa;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 84
    iget-object v0, p1, Leoa;->c:Ljava/lang/String;

    iget-object v1, p2, Lenl;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    :cond_1
    iget-object v0, p1, Leoa;->d:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 87
    iget-object v0, p1, Leoa;->d:Ljava/util/List;

    iget-object v1, p2, Lenl;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 89
    :cond_2
    iget-object v0, p1, Leoa;->e:Lcom/wandoujia/logv3/model/packages/UrlPackage$Vertical;

    if-eqz v0, :cond_3

    .line 90
    iget-object v0, p1, Leoa;->e:Lcom/wandoujia/logv3/model/packages/UrlPackage$Vertical;

    invoke-virtual {p3, v0}, Lcom/wandoujia/logv3/model/packages/UrlPackage$Builder;->vertical(Lcom/wandoujia/logv3/model/packages/UrlPackage$Vertical;)Lcom/wandoujia/logv3/model/packages/UrlPackage$Builder;

    .line 93
    :cond_3
    const/4 v1, -0x1

    .line 94
    const/4 v0, 0x0

    move v2, v1

    move v1, v0

    :goto_0
    iget-object v0, p1, Leoa;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_6

    .line 95
    iget-object v0, p1, Leoa;->j:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leoa;

    .line 96
    invoke-direct {p0, v0, p2, p3}, Leob;->a(Leoa;Lenl;Lcom/wandoujia/logv3/model/packages/UrlPackage$Builder;)Leoj;

    move-result-object v0

    .line 97
    if-eqz v0, :cond_5

    iget-object v3, v0, Leoj;->a:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 98
    if-ltz v2, :cond_4

    .line 99
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Found sibling node with page uri in log tree, uri="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Leoj;->a:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    move v2, v1

    .line 94
    :cond_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 106
    :cond_6
    iget-object v0, p1, Leoa;->b:Leoj;

    return-object v0
.end method

.method private static b(Leoa;)Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;
    .locals 3
    .parameter

    .prologue
    .line 110
    new-instance v1, Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;

    invoke-direct {v1}, Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;-><init>()V

    .line 111
    :goto_0
    if-eqz p0, :cond_9

    .line 113
    iget-object v2, p0, Leoa;->h:Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;

    .line 114
    if-eqz v2, :cond_0

    .line 115
    iget-object v0, v1, Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;->card_package:Lcom/wandoujia/logv3/model/packages/CardPackage;

    if-nez v0, :cond_1

    iget-object v0, v2, Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;->card_package:Lcom/wandoujia/logv3/model/packages/CardPackage;

    :goto_1
    iput-object v0, v1, Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;->card_package:Lcom/wandoujia/logv3/model/packages/CardPackage;

    iget-object v0, v1, Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;->content_package:Lcom/wandoujia/logv3/model/packages/ContentPackage;

    if-nez v0, :cond_2

    iget-object v0, v2, Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;->content_package:Lcom/wandoujia/logv3/model/packages/ContentPackage;

    :goto_2
    iput-object v0, v1, Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;->content_package:Lcom/wandoujia/logv3/model/packages/ContentPackage;

    iget-object v0, v1, Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;->resource_package:Lcom/wandoujia/logv3/model/packages/ResourcePackage;

    if-nez v0, :cond_3

    iget-object v0, v2, Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;->resource_package:Lcom/wandoujia/logv3/model/packages/ResourcePackage;

    :goto_3
    iput-object v0, v1, Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;->resource_package:Lcom/wandoujia/logv3/model/packages/ResourcePackage;

    iget-object v0, v1, Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;->open_type_package:Lcom/wandoujia/logv3/model/packages/OpenTypePackage;

    if-nez v0, :cond_4

    iget-object v0, v2, Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;->open_type_package:Lcom/wandoujia/logv3/model/packages/OpenTypePackage;

    :goto_4
    iput-object v0, v1, Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;->open_type_package:Lcom/wandoujia/logv3/model/packages/OpenTypePackage;

    iget-object v0, v1, Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;->feed_package:Lcom/wandoujia/logv3/model/packages/FeedPackage;

    if-nez v0, :cond_5

    iget-object v0, v2, Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;->feed_package:Lcom/wandoujia/logv3/model/packages/FeedPackage;

    :goto_5
    iput-object v0, v1, Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;->feed_package:Lcom/wandoujia/logv3/model/packages/FeedPackage;

    iget-object v0, v1, Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;->device_status_package:Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage;

    if-nez v0, :cond_6

    iget-object v0, v2, Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;->device_status_package:Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage;

    :goto_6
    iput-object v0, v1, Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;->device_status_package:Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage;

    iget-object v0, v1, Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;->download_package:Lcom/wandoujia/logv3/model/packages/DownloadPackage;

    if-nez v0, :cond_7

    iget-object v0, v2, Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;->download_package:Lcom/wandoujia/logv3/model/packages/DownloadPackage;

    :goto_7
    iput-object v0, v1, Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;->download_package:Lcom/wandoujia/logv3/model/packages/DownloadPackage;

    iget-object v0, v1, Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;->game_launcher_package:Lcom/wandoujia/logv3/model/packages/GameLauncherPackage;

    if-nez v0, :cond_8

    iget-object v0, v2, Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;->game_launcher_package:Lcom/wandoujia/logv3/model/packages/GameLauncherPackage;

    :goto_8
    iput-object v0, v1, Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;->game_launcher_package:Lcom/wandoujia/logv3/model/packages/GameLauncherPackage;

    .line 117
    :cond_0
    iget-object p0, p0, Leoa;->i:Leoa;

    goto :goto_0

    .line 115
    :cond_1
    iget-object v0, v1, Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;->card_package:Lcom/wandoujia/logv3/model/packages/CardPackage;

    goto :goto_1

    :cond_2
    iget-object v0, v1, Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;->content_package:Lcom/wandoujia/logv3/model/packages/ContentPackage;

    goto :goto_2

    :cond_3
    iget-object v0, v1, Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;->resource_package:Lcom/wandoujia/logv3/model/packages/ResourcePackage;

    goto :goto_3

    :cond_4
    iget-object v0, v1, Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;->open_type_package:Lcom/wandoujia/logv3/model/packages/OpenTypePackage;

    goto :goto_4

    :cond_5
    iget-object v0, v1, Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;->feed_package:Lcom/wandoujia/logv3/model/packages/FeedPackage;

    goto :goto_5

    :cond_6
    iget-object v0, v1, Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;->device_status_package:Lcom/wandoujia/logv3/model/packages/DeviceStatusPackage;

    goto :goto_6

    :cond_7
    iget-object v0, v1, Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;->download_package:Lcom/wandoujia/logv3/model/packages/DownloadPackage;

    goto :goto_7

    :cond_8
    iget-object v0, v1, Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;->game_launcher_package:Lcom/wandoujia/logv3/model/packages/GameLauncherPackage;

    goto :goto_8

    .line 119
    :cond_9
    return-object v1
.end method


# virtual methods
.method public final a(Leoa;)Leoc;
    .locals 11
    .parameter

    .prologue
    const/16 v10, 0x23

    const/4 v6, 0x0

    .line 25
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-interface {v1, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leoa;

    iget-object v2, v0, Leoa;->f:Leok;

    if-eqz v2, :cond_5

    .line 26
    iget-object v1, v0, Leoa;->a:Ljava/lang/String;

    .line 27
    iget-object v2, v0, Leoa;->f:Leok;

    .line 28
    iget-object v3, v0, Leoa;->g:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$IndexPackage;

    .line 29
    invoke-static {v0}, Leob;->b(Leoa;)Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;

    move-result-object v4

    .line 31
    new-instance v5, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Builder;

    invoke-direct {v5}, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Builder;-><init>()V

    .line 32
    invoke-virtual {v5, v1}, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Builder;->module(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Builder;

    move-result-object v0

    iget-object v1, v2, Leok;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Builder;->name(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Builder;

    move-result-object v0

    iget-object v1, v2, Leok;->b:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;

    invoke-virtual {v0, v1}, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Builder;->action(Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;)Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Builder;

    move-result-object v0

    iget-object v1, v2, Leok;->a:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    invoke-virtual {v0, v1}, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Builder;->element(Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;)Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Builder;

    move-result-object v0

    iget-object v1, v2, Leok;->d:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Builder;->value(Ljava/lang/Long;)Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Builder;

    move-result-object v1

    new-instance v2, Lenl;

    invoke-direct {v2, v6}, Lenl;-><init>(B)V

    new-instance v6, Lcom/wandoujia/logv3/model/packages/UrlPackage$Builder;

    invoke-direct {v6}, Lcom/wandoujia/logv3/model/packages/UrlPackage$Builder;-><init>()V

    invoke-direct {p0, p1, v2, v6}, Leob;->a(Leoa;Lenl;Lcom/wandoujia/logv3/model/packages/UrlPackage$Builder;)Leoj;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v2, Lenl;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, v2, Lenl;->a:Ljava/util/List;

    iget-object v9, v2, Lenl;->a:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leoj;

    iget-boolean v0, v0, Leoj;->b:Z

    if-eqz v0, :cond_1

    const-string v0, "/"

    iget-object v9, v2, Lenl;->a:Ljava/util/List;

    invoke-static {v0, v9}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v0, v2, Lenl;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/16 v0, 0x3f

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, v2, Lenl;->c:Ljava/util/List;

    const-string v9, "utf-8"

    invoke-static {v0, v9}, Lorg/apache/http/client/utils/URLEncodedUtils;->format(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v0, v2, Lenl;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "#"

    iget-object v2, v2, Lenl;->b:Ljava/util/List;

    invoke-static {v0, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    new-instance v0, Lenz;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v2, v7}, Lenz;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v0, Lenz;->a:Ljava/lang/String;

    invoke-virtual {v6, v2}, Lcom/wandoujia/logv3/model/packages/UrlPackage$Builder;->url(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/UrlPackage$Builder;

    move-result-object v2

    iget-object v0, v0, Lenz;->b:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/wandoujia/logv3/model/packages/UrlPackage$Builder;->normalized_url(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/UrlPackage$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/logv3/model/packages/UrlPackage$Builder;->build()Lcom/wandoujia/logv3/model/packages/UrlPackage;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Builder;->url_package(Lcom/wandoujia/logv3/model/packages/UrlPackage;)Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Builder;

    .line 39
    if-eqz v3, :cond_4

    .line 40
    invoke-virtual {v5, v3}, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Builder;->index(Lcom/wandoujia/logv3/model/packages/ViewLogPackage$IndexPackage;)Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Builder;

    .line 43
    :cond_4
    new-instance v0, Leoc;

    invoke-direct {v0, v5, v4}, Leoc;-><init>(Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Builder;Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;)V

    return-object v0

    .line 25
    :cond_5
    iget-object v0, v0, Leoa;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leoa;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "There is no view set with ViewPackage found in the log tree."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
