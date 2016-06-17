.class public final Lebl;
.super Ljava/lang/Object;
.source "GameFolderManager.java"


# static fields
.field private static f:Lebl;


# instance fields
.field final a:Ljava/lang/Byte;

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/launcher/launcher/models/SimpleAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field public c:Leba;

.field d:Lgdw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgdw",
            "<",
            "Lebp;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Lebj;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/launcher/launcher/models/LauncherSuggestionModel;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private i:Landroid/os/Handler;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    iput-object v0, p0, Lebl;->a:Ljava/lang/Byte;

    .line 318
    new-instance v0, Lebj;

    invoke-direct {v0, p0}, Lebj;-><init>(Lebl;)V

    iput-object v0, p0, Lebl;->e:Lebj;

    .line 45
    new-instance v0, Leba;

    invoke-direct {v0}, Leba;-><init>()V

    iput-object v0, p0, Lebl;->c:Leba;

    .line 46
    new-instance v0, Lgdw;

    invoke-direct {v0}, Lgdw;-><init>()V

    iput-object v0, p0, Lebl;->d:Lgdw;

    .line 47
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lebl;->i:Landroid/os/Handler;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lebl;->h:Ljava/util/List;

    .line 49
    invoke-static {}, Lebb;->a()Lebb;

    move-result-object v0

    iget-object v1, p0, Lebl;->e:Lebj;

    invoke-virtual {v0, v1}, Lebb;->a(Lebj;)V

    .line 50
    return-void
.end method

.method public static declared-synchronized a()Lebl;
    .locals 2

    .prologue
    .line 53
    const-class v1, Lebl;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lebl;->f:Lebl;

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Lebl;

    invoke-direct {v0}, Lebl;-><init>()V

    sput-object v0, Lebl;->f:Lebl;

    .line 56
    :cond_0
    sget-object v0, Lebl;->f:Lebl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 53
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private d(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 287
    iget-object v0, p0, Lebl;->b:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 288
    iget-object v0, p0, Lebl;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/launcher/launcher/models/SimpleAppInfo;

    .line 289
    invoke-virtual {v0}, Lcom/wandoujia/launcher/launcher/models/SimpleAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 290
    iget-object v1, p0, Lebl;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 291
    iget-object v0, p0, Lebl;->c:Leba;

    invoke-virtual {v0, p1}, Leba;->a(Ljava/lang/String;)V

    .line 296
    :cond_1
    return-void
.end method


# virtual methods
.method public final a(Lebp;)V
    .locals 1
    .parameter

    .prologue
    .line 384
    iget-object v0, p0, Lebl;->d:Lgdw;

    invoke-virtual {v0, p1}, Lgdw;->a(Ljava/lang/Object;)V

    .line 385
    return-void
.end method

.method public final declared-synchronized a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 100
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lebl;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 101
    iget-object v0, p0, Lebl;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    :cond_0
    monitor-exit p0

    return-void

    .line 100
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/launcher/launcher/models/SimpleAppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 65
    iget-object v0, p0, Lebl;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lebl;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 66
    :cond_0
    iget-object v0, p0, Lebl;->c:Leba;

    iget-object v0, v0, Leba;->a:Ldzg;

    invoke-virtual {v0}, Ldzg;->a()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lebl;->b:Ljava/util/List;

    .line 68
    :cond_1
    iget-object v0, p0, Lebl;->b:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lebl;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 70
    :try_start_0
    iget-object v0, p0, Lebl;->b:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lebl;->b:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 78
    :goto_1
    return-object v0

    .line 77
    :cond_2
    invoke-static {}, Lebb;->a()Lebb;

    move-result-object v0

    invoke-virtual {v0}, Lebb;->b()V

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final declared-synchronized b(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 106
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lebl;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lebl;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    :cond_0
    monitor-exit p0

    return-void

    .line 106
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final c()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/launcher/launcher/models/SimpleAppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 121
    iget-object v0, p0, Lebl;->b:Ljava/util/List;

    if-nez v0, :cond_0

    .line 122
    const/4 v0, 0x0

    .line 124
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lebl;->b:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 221
    invoke-virtual {p0}, Lebl;->b()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lebl;->b:Ljava/util/List;

    .line 223
    invoke-static {}, Lebb;->a()Lebb;

    move-result-object v0

    invoke-virtual {v0, p1}, Lebb;->b(Ljava/lang/String;)I

    move-result v0

    .line 224
    if-lez v0, :cond_1

    .line 225
    invoke-static {}, Lg;->h()I

    move-result v0

    invoke-static {}, Lebb;->a()Lebb;

    move-result-object v1

    invoke-virtual {v1, p1}, Lebb;->b(Ljava/lang/String;)I

    move-result v1

    sub-int/2addr v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    invoke-static {}, Lebb;->a()Lebb;

    move-result-object v1

    invoke-virtual {v1, p1}, Lebb;->a(Ljava/lang/String;)V

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lebl;->e:Lebj;

    iget-object v1, v1, Lebj;->a:Lebl;

    invoke-virtual {v1}, Lebl;->h()V

    invoke-static {v0}, Lg;->a(I)V

    .line 227
    :cond_1
    invoke-direct {p0, p1}, Lebl;->d(Ljava/lang/String;)V

    .line 229
    invoke-static {}, Lg;->h()I

    move-result v0

    .line 230
    invoke-static {}, Lebb;->a()Lebb;

    move-result-object v1

    invoke-virtual {v1, p1}, Lebb;->b(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_2

    .line 231
    invoke-static {}, Lebb;->a()Lebb;

    move-result-object v1

    invoke-virtual {v1, p1}, Lebb;->b(Ljava/lang/String;)I

    move-result v1

    sub-int/2addr v0, v1

    .line 234
    :cond_2
    iget-object v1, p0, Lebl;->b:Ljava/util/List;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lebl;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_4

    :cond_3
    invoke-static {}, Lg;->h()I

    move-result v1

    if-eq v0, v1, :cond_5

    .line 236
    :cond_4
    invoke-static {v0}, Lg;->a(I)V

    .line 238
    :cond_5
    invoke-static {}, Ledn;->b()V

    .line 239
    invoke-virtual {p0}, Lebl;->h()V

    .line 240
    return-void
.end method

.method public final d()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/launcher/launcher/models/LauncherSuggestionModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 158
    iget-object v0, p0, Lebl;->g:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lebl;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 159
    :cond_0
    invoke-static {}, Leba;->a()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lebl;->g:Ljava/util/List;

    .line 161
    :cond_1
    iget-object v0, p0, Lebl;->g:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 162
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lebl;->g:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 164
    :goto_0
    return-object v0

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method public final e()V
    .locals 5

    .prologue
    .line 190
    invoke-virtual {p0}, Lebl;->b()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lebl;->b:Ljava/util/List;

    .line 191
    iget-object v0, p0, Lebl;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 192
    invoke-static {}, Lg;->h()I

    move-result v0

    move v1, v0

    .line 193
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 194
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/launcher/launcher/models/SimpleAppInfo;

    .line 195
    invoke-static {}, Lcom/wandoujia/appmanager/AppManager;->a()Lcom/wandoujia/appmanager/AppManager;

    move-result-object v3

    invoke-virtual {v0}, Lcom/wandoujia/launcher/launcher/models/SimpleAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/wandoujia/appmanager/AppManager;->f(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 197
    invoke-static {}, Lebb;->a()Lebb;

    move-result-object v3

    invoke-virtual {v0}, Lcom/wandoujia/launcher/launcher/models/SimpleAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lebb;->b(Ljava/lang/String;)I

    move-result v3

    .line 198
    if-lez v3, :cond_0

    .line 199
    sub-int/2addr v1, v3

    .line 201
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 202
    iget-object v3, p0, Lebl;->c:Leba;

    invoke-virtual {v0}, Lcom/wandoujia/launcher/launcher/models/SimpleAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Leba;->a(Ljava/lang/String;)V

    :cond_1
    move v0, v1

    move v1, v0

    .line 204
    goto :goto_0

    .line 207
    :cond_2
    iget-object v0, p0, Lebl;->b:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lebl;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x4

    if-lt v0, v2, :cond_4

    :cond_3
    invoke-static {}, Lg;->h()I

    move-result v0

    if-eq v1, v0, :cond_5

    .line 209
    :cond_4
    invoke-static {v1}, Lg;->a(I)V

    .line 211
    :cond_5
    invoke-static {}, Ledn;->b()V

    .line 212
    invoke-virtual {p0}, Lebl;->h()V

    .line 213
    return-void
.end method

.method public final f()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v7, 0x1

    .line 259
    invoke-static {}, Leba;->c()V

    invoke-static {}, Ld;->u()Lcom/wandoujia/launcher/launcher/models/LauncherSuggestions;

    move-result-object v3

    if-nez v3, :cond_3

    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/wandoujia/launcher/launcher/models/LauncherSuggestions;->getCase1()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "folder_casual_list"

    invoke-virtual {v0}, Lcom/wandoujia/launcher/launcher/models/LauncherSuggestions;->getCase1()Ljava/util/List;

    move-result-object v3

    invoke-static {v1, v3}, Ld;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/wandoujia/launcher/launcher/models/LauncherSuggestions;->getRecommendTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lg;->k()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "folder_suggestion_title"

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-static {v3}, Lcom/wandoujia/base/utils/SharePrefSubmitor;->submit(Landroid/content/SharedPreferences$Editor;)V

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {}, Lg;->k()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v3, "last_generate_suggestionlist_time"

    invoke-interface {v1, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-static {v1}, Lcom/wandoujia/base/utils/SharePrefSubmitor;->submit(Landroid/content/SharedPreferences$Editor;)V

    invoke-virtual {v0}, Lcom/wandoujia/launcher/launcher/models/LauncherSuggestions;->getCase0()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {}, Lg;->k()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v3, "folder_suggestion_count"

    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-static {v1}, Lcom/wandoujia/base/utils/SharePrefSubmitor;->submit(Landroid/content/SharedPreferences$Editor;)V

    .line 260
    :cond_1
    iput-object v2, p0, Lebl;->g:Ljava/util/List;

    .line 261
    iget-object v0, p0, Lebl;->c:Leba;

    if-eqz v0, :cond_2

    .line 262
    invoke-static {}, Leba;->a()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lebl;->g:Ljava/util/List;

    .line 264
    :cond_2
    return-void

    .line 259
    :cond_3
    invoke-virtual {v3}, Lcom/wandoujia/launcher/launcher/models/LauncherSuggestions;->getCase1()Ljava/util/List;

    move-result-object v1

    invoke-static {}, Leba;->a()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_5

    if-eqz v1, :cond_5

    invoke-static {v7}, Lg;->e(Z)V

    :cond_4
    :goto_1
    move-object v0, v3

    goto :goto_0

    :cond_5
    if-eqz v4, :cond_4

    if-eqz v1, :cond_4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-eq v0, v5, :cond_6

    invoke-static {v7}, Lg;->e(Z)V

    goto :goto_1

    :cond_6
    const/4 v0, 0x0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v0

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/launcher/launcher/models/LauncherSuggestionModel;

    if-eqz v0, :cond_7

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_7

    invoke-virtual {v0}, Lcom/wandoujia/launcher/launcher/models/LauncherSuggestionModel;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/launcher/launcher/models/LauncherSuggestionModel;

    invoke-virtual {v0}, Lcom/wandoujia/launcher/launcher/models/LauncherSuggestionModel;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {v7}, Lg;->e(Z)V

    goto :goto_1

    :cond_7
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2
.end method

.method public final g()V
    .locals 1

    .prologue
    .line 306
    new-instance v0, Lebn;

    invoke-direct {v0, p0}, Lebn;-><init>(Lebl;)V

    invoke-static {v0}, Lcom/wandoujia/base/utils/ThreadPool;->execute(Ljava/lang/Runnable;)V

    .line 316
    return-void
.end method

.method public final h()V
    .locals 2

    .prologue
    .line 371
    iget-object v0, p0, Lebl;->i:Landroid/os/Handler;

    new-instance v1, Lebo;

    invoke-direct {v1, p0}, Lebo;-><init>(Lebl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 381
    return-void
.end method
