.class public final Lcgh;
.super Ljava/lang/Object;


# instance fields
.field a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field private g:Landroid/content/Context;

.field private h:Lcgf;

.field private i:Lcge;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "errormsg"

    iput-object v0, p0, Lcgh;->a:Ljava/lang/String;

    const-string v0, "errorCode"

    iput-object v0, p0, Lcgh;->b:Ljava/lang/String;

    const-string v0, "errorMessage"

    iput-object v0, p0, Lcgh;->c:Ljava/lang/String;

    const-string v0, "errorNotice"

    iput-object v0, p0, Lcgh;->d:Ljava/lang/String;

    const-string v0, "errorAdv"

    iput-object v0, p0, Lcgh;->e:Ljava/lang/String;

    const-string v0, "error_msg.db"

    iput-object v0, p0, Lcgh;->f:Ljava/lang/String;

    iput-object p1, p0, Lcgh;->g:Landroid/content/Context;

    new-instance v0, Lcge;

    iget-object v1, p0, Lcgh;->g:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcge;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcgh;->i:Lcge;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcgh;->h:Lcgf;

    invoke-virtual {v0}, Lcgf;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iget-object v1, p0, Lcgh;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    return-void
.end method

.method public final a(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcgd;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcgh;->h:Lcgf;

    invoke-virtual {v0}, Lcgf;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    iget-object v4, p0, Lcgh;->b:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcgd;

    iget v0, v0, Lcgd;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v4, p0, Lcgh;->c:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcgd;

    iget-object v0, v0, Lcgd;->b:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcgh;->d:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcgd;

    iget-object v0, v0, Lcgd;->c:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcgh;->e:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcgd;

    iget-object v0, v0, Lcgd;->d:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcgh;->a:Ljava/lang/String;

    iget-object v4, p0, Lcgh;->c:Ljava/lang/String;

    invoke-virtual {v2, v0, v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    return-void
.end method

.method public final a(Z)V
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcgh;->g:Landroid/content/Context;

    const-string v3, "databaseSettings"

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v3, "isInited"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcgf;

    iget-object v3, p0, Lcgh;->g:Landroid/content/Context;

    invoke-direct {v0, p0, v3}, Lcgf;-><init>(Lcgh;Landroid/content/Context;)V

    iput-object v0, p0, Lcgh;->h:Lcgf;

    :goto_0
    iget-object v0, p0, Lcgh;->g:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcgh;->i:Lcge;

    :try_start_0
    new-instance v1, Lcgg;

    invoke-direct {v1, v0}, Lcgg;-><init>(Lcge;)V

    invoke-virtual {v1}, Lcgg;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_2
    return-void

    :cond_1
    new-instance v0, Lcgf;

    iget-object v3, p0, Lcgh;->g:Landroid/content/Context;

    invoke-direct {v0, p0, v3}, Lcgf;-><init>(Lcgh;Landroid/content/Context;)V

    iput-object v0, p0, Lcgh;->h:Lcgf;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lcgd;

    const-string v4, "\u652f\u4ed8\u6210\u529f"

    const-string v5, "\u652f\u4ed8\u6210\u529f\uff0c\u7a0d\u540e\u60a8\u5c06\u6536\u5230\u63d0\u793a\u77ed\u4fe1"

    const-string v6, "\u65e0"

    invoke-direct {v3, v2, v4, v5, v6}, Lcgd;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcgd;

    const/16 v4, 0x3e9

    const-string v5, "\u8ba2\u8d2d\u7528\u6237\u4e0d\u5b58\u5728"

    const-string v6, "\u60a8\u7684\u901a\u4fe1\u8d26\u6237\u65e0\u6cd5\u5b8c\u6210\u652f\u4ed8"

    const-string v7, "\u4f7f\u7528\u5176\u4ed6\u652f\u4ed8\u65b9\u5f0f"

    invoke-direct {v3, v4, v5, v6, v7}, Lcgd;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcgd;

    const/16 v4, 0x3ea

    const-string v5, "\u8ba2\u8d2d\u7528\u6237\u72b6\u6001\u88ab\u505c\u6b62"

    const-string v6, "\u60a8\u7684\u901a\u4fe1\u8d26\u6237\u65e0\u6cd5\u5b8c\u6210\u652f\u4ed8"

    const-string v7, "\u4f7f\u7528\u5176\u4ed6\u652f\u4ed8\u65b9\u5f0f"

    invoke-direct {v3, v4, v5, v6, v7}, Lcgd;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcgd;

    const/16 v4, 0x3eb

    const-string v5, "\u8ba2\u8d2d\u7528\u6237\u6b20\u8d39\uff0c\u9884\u4ed8\u8d39\u7528\u6237\u8ba1\u8d39\u5931\u8d25"

    const-string v6, "\u60a8\u7684\u901a\u4fe1\u8d26\u6237\u4f59\u989d\u53ef\u80fd\u4e0d\u8db3"

    const-string v7, "\u67e5\u770b\u624b\u673a\u5e10\u53f7\u4f59\u989d\u662f\u5426\u8db3\u591f\uff0c\u8fdb\u884c\u5145\u503c;:;\u4f7f\u7528\u5176\u4ed6\u65b9\u5f0f\u8fdb\u884c\u652f\u4ed8"

    invoke-direct {v3, v4, v5, v6, v7}, Lcgd;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcgd;

    const/16 v4, 0x3ec

    const-string v5, "\u8ba2\u8d2d\u7528\u6237\u5728\u9ed1\u540d\u5355"

    const-string v6, "\u60a8\u7684\u901a\u4fe1\u8d26\u6237\u65e0\u6cd5\u5b8c\u6210\u652f\u4ed8"

    const-string v7, "\u4f7f\u7528\u5176\u4ed6\u652f\u4ed8\u65b9\u5f0f"

    invoke-direct {v3, v4, v5, v6, v7}, Lcgd;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcgd;

    const/16 v4, 0x3ed

    const-string v5, "\u65e0\u6548\u7528\u6237\uff0c\u7528\u6237\u4e0d\u518d\u5f53\u524d\u5e73\u53f0\u7ec8"

    const-string v6, "\u60a8\u7684\u901a\u4fe1\u8d26\u6237\u65e0\u6cd5\u5b8c\u6210\u652f\u4ed8"

    const-string v7, "\u4f7f\u7528\u5176\u4ed6\u652f\u4ed8\u65b9\u5f0f"

    invoke-direct {v3, v4, v5, v6, v7}, Lcgd;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcgd;

    const/16 v4, 0x3ee

    const-string v5, "\u6b64\u4e1a\u52a1\u80fd\u529b\u5df2\u88ab\u5c4f\u853d"

    const-string v6, "\u60a8\u7684\u901a\u4fe1\u8d26\u6237\u65e0\u6cd5\u5b8c\u6210\u652f\u4ed8"

    const-string v7, "\u4f7f\u7528\u5176\u4ed6\u652f\u4ed8\u65b9\u5f0f"

    invoke-direct {v3, v4, v5, v6, v7}, Lcgd;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcgd;

    const/16 v4, 0x3ef

    const-string v5, "\u7528\u6237\u65e0\u6cd5\u5c4f\u853d/\u6062\u590d\u4e1a\u52a1\u80fd\u529b"

    const-string v6, "\u60a8\u7684\u901a\u4fe1\u8d26\u6237\u65e0\u6cd5\u5b8c\u6210\u652f\u4ed8"

    const-string v7, "\u4f7f\u7528\u5176\u4ed6\u652f\u4ed8\u65b9\u5f0f"

    invoke-direct {v3, v4, v5, v6, v7}, Lcgd;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcgd;

    const/16 v4, 0x44b

    const-string v5, "\u5176\u4ed6\u9519\u8bef"

    const-string v6, "\u6682\u65f6\u65e0\u6cd5\u5b8c\u6210\u652f\u4ed8"

    const-string v7, "\u91cd\u65b0\u8fdb\u884c\u652f\u4ed8"

    invoke-direct {v3, v4, v5, v6, v7}, Lcgd;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcgd;

    const/16 v4, 0x2711

    const-string v5, "\u7528\u6237\u4e0d\u5b58\u5728"

    const-string v6, "\u6682\u65f6\u65e0\u6cd5\u5b8c\u6210\u652f\u4ed8"

    const-string v7, "\u91cd\u65b0\u8fdb\u884c\u652f\u4ed8"

    invoke-direct {v3, v4, v5, v6, v7}, Lcgd;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcgd;

    const/16 v4, 0x2712

    const-string v5, "\u5f00\u53d1\u8005\u4e0d\u652f\u6301VAC"

    const-string v6, "\u6682\u65f6\u65e0\u6cd5\u5b8c\u6210\u652f\u4ed8"

    const-string v7, "\u91cd\u65b0\u8fdb\u884c\u652f\u4ed8"

    invoke-direct {v3, v4, v5, v6, v7}, Lcgd;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcgd;

    const/16 v4, 0x2713

    const-string v5, "\u4e1a\u52a1\u4e0d\u5b58\u5728"

    const-string v6, "\u6682\u65f6\u65e0\u6cd5\u5b8c\u6210\u652f\u4ed8"

    const-string v7, "\u91cd\u65b0\u8fdb\u884c\u652f\u4ed8"

    invoke-direct {v3, v4, v5, v6, v7}, Lcgd;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcgd;

    const/16 v4, 0x2714

    const-string v5, "\u4e1a\u52a1\u72b6\u6001\u4e0d\u6b63\u5e38"

    const-string v6, "\u6682\u65f6\u65e0\u6cd5\u5b8c\u6210\u652f\u4ed8"

    const-string v7, "\u91cd\u65b0\u8fdb\u884c\u652f\u4ed8"

    invoke-direct {v3, v4, v5, v6, v7}, Lcgd;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcgd;

    const/16 v4, 0x2715

    const-string v5, "\u6e20\u9053\u4ee3\u7801\u9519\u8bef"

    const-string v6, "\u60a8\u4f7f\u7528\u7684\u6e38\u620f\u6709\u66f4\u65b0\uff0c\u9700\u8981\u91cd\u65b0\u5b89\u88c5\u624d\u80fd\u5b8c\u6210\u652f\u4ed8"

    const-string v7, "\u4ece\u8054\u901a\u6c83\u5546\u5e97\u91cd\u65b0\u4e0b\u8f7d\u6e38\u620f\u5305\u8fdb\u884c\u652f\u4ed8"

    invoke-direct {v3, v4, v5, v6, v7}, Lcgd;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcgd;

    const/16 v4, 0x2717

    const-string v5, "\u8d85\u65f6\u5f53\u6708\u9650\u989d"

    const-string v6, "\u60a8\u7684\u901a\u4fe1\u8d26\u6237\u652f\u4ed8\u8d85\u8fc7\u5f53\u6708\u9650\u989d"

    const-string v7, "\u4f7f\u7528\u5176\u4ed6\u652f\u4ed8\u65b9\u5f0f"

    invoke-direct {v3, v4, v5, v6, v7}, Lcgd;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcgd;

    const/16 v4, 0x2718

    const-string v5, "\u8d85\u8fc7\u5f53\u65e5\u9650\u989d"

    const-string v6, "\u60a8\u7684\u901a\u4fe1\u8d26\u6237\u652f\u4ed8\u8d85\u8fc7\u5f53\u65e5\u9650\u989d"

    const-string v7, "\u4f7f\u7528\u5176\u4ed6\u652f\u4ed8\u65b9\u5f0f\uff0c\u6216\u8005\u660e\u5929\u518d\u8fdb\u884c\u652f\u4ed8\u3002"

    invoke-direct {v3, v4, v5, v6, v7}, Lcgd;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcgd;

    const/16 v4, 0x2719

    const-string v5, "\u4efb\u52a1\u4e0d\u5b58\u5728(\u5185\u90e8\u5f02\u5e38)"

    const-string v6, "\u652f\u4ed8\u670d\u52a1\u6682\u65f6\u4e0d\u53ef\u7528"

    const-string v7, "\u4f7f\u7528\u5176\u4ed6\u652f\u4ed8\u65b9\u5f0f\uff0c\u6216\u7a0d\u540e\u518d\u8bd5"

    invoke-direct {v3, v4, v5, v6, v7}, Lcgd;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcgd;

    const/16 v4, 0x271a

    const-string v5, "\u6570\u636e\u5e93\u64cd\u4f5c\u5931\u8d25(\u5185\u90e8\u5f02\u5e38)"

    const-string v6, "\u652f\u4ed8\u670d\u52a1\u6682\u65f6\u4e0d\u53ef\u7528"

    const-string v7, "\u4f7f\u7528\u5176\u4ed6\u652f\u4ed8\u65b9\u5f0f\uff0c\u6216\u7a0d\u540e\u518d\u8bd5"

    invoke-direct {v3, v4, v5, v6, v7}, Lcgd;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcgd;

    const/16 v4, 0x271b

    const-string v5, "\u4e1a\u52a1\u4e0d\u5c5e\u4e8e\u8be5CP"

    const-string v6, "\u60a8\u4f7f\u7528\u7684\u6e38\u620f\u6709\u66f4\u65b0\uff0c\u9700\u8981\u91cd\u65b0\u5b89\u88c5\u624d\u80fd\u5b8c\u6210\u652f\u4ed8"

    const-string v7, "\u4ece\u8054\u901a\u6c83\u5546\u5e97\u91cd\u65b0\u4e0b\u8f7d\u6e38\u620f\u5305\u8fdb\u884c\u652f\u4ed8"

    invoke-direct {v3, v4, v5, v6, v7}, Lcgd;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcgd;

    const/16 v4, 0x271c

    const-string v5, "\u91cd\u590d\u6fc0\u6d3b"

    const-string v6, "\u652f\u4ed8\u6210\u529f"

    const-string v7, ""

    invoke-direct {v3, v4, v5, v6, v7}, Lcgd;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcgd;

    const/16 v4, 0x450

    const-string v5, "\u7528\u6237\u4e0d\u5b58\u5728"

    const-string v6, "\u60a8\u7684\u901a\u4fe1\u8d26\u6237\u6682\u65f6\u65e0\u6cd5\u5b8c\u6210\u652f\u4ed8"

    const-string v7, "\u4f7f\u7528\u5176\u4ed6\u652f\u4ed8\u65b9\u5f0f\uff0c\u6216\u8005\u91cd\u65b0\u652f\u4ed8"

    invoke-direct {v3, v4, v5, v6, v7}, Lcgd;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcgd;

    const/16 v4, 0x451

    const-string v5, "\u7528\u6237\u72b6\u6001\u4e0d\u6b63\u5e38"

    const-string v6, "\u60a8\u7684\u901a\u4fe1\u8d26\u6237\u6682\u65f6\u65e0\u6cd5\u5b8c\u6210\u652f\u4ed8"

    const-string v7, "\u4f7f\u7528\u5176\u4ed6\u652f\u4ed8\u65b9\u5f0f\uff0c\u6216\u8005\u91cd\u65b0\u652f\u4ed8"

    invoke-direct {v3, v4, v5, v6, v7}, Lcgd;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcgd;

    const/16 v4, 0xc1c

    const-string v5, "\u7528\u6237\u4e0d\u662f\u4e00\u4e2a\u9884\u4ed8\u8d39\u7528\u6237"

    const-string v6, "\u60a8\u7684\u901a\u4fe1\u8d26\u6237\u6682\u65f6\u65e0\u6cd5\u5b8c\u6210\u652f\u4ed8"

    const-string v7, "\u4f7f\u7528\u5176\u4ed6\u652f\u4ed8\u65b9\u5f0f\uff0c\u6216\u8005\u91cd\u65b0\u652f\u4ed8"

    invoke-direct {v3, v4, v5, v6, v7}, Lcgd;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcgd;

    const/16 v4, 0xc1d

    const-string v5, "\u7528\u6237\u4f59\u989d\u4e0d\u8db3"

    const-string v6, "\u60a8\u7684\u901a\u4fe1\u8d26\u6237\u6682\u65f6\u65e0\u6cd5\u5b8c\u6210\u652f\u4ed8"

    const-string v7, "\u67e5\u770b\u624b\u673a\u8d26\u53f7\u4f59\u989d\u662f\u5426\u8db3\u591f\uff0c\u8fdb\u884c\u5145\u503c;:;\u4f7f\u7528\u5176\u4ed6\u65b9\u5f0f\u8fdb\u884c\u652f\u4ed8"

    invoke-direct {v3, v4, v5, v6, v7}, Lcgd;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcgd;

    const/16 v4, 0xc1e

    const-string v5, "\u538b\u7f29\u4f59\u989d\u5931\u8d25"

    const-string v6, "\u60a8\u7684\u901a\u4fe1\u8d26\u6237\u6682\u65f6\u65e0\u6cd5\u5b8c\u6210\u652f\u4ed8"

    const-string v7, "\u67e5\u770b\u624b\u673a\u8d26\u53f7\u4f59\u989d\u662f\u5426\u8db3\u591f\uff0c\u8fdb\u884c\u5145\u503c;:;\u4f7f\u7528\u5176\u4ed6\u65b9\u5f0f\u8fdb\u884c\u652f\u4ed8"

    invoke-direct {v3, v4, v5, v6, v7}, Lcgd;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcgd;

    const/16 v4, 0xc1f

    const-string v5, "\u6ca1\u6709\u9700\u8981\u7684\u8ba1\u8d39\u4fe1\u606f"

    const-string v6, "\u6682\u65f6\u65e0\u6cd5\u5b8c\u6210\u652f\u4ed8"

    const-string v7, "\u91cd\u65b0\u8fdb\u884c\u652f\u4ed8"

    invoke-direct {v3, v4, v5, v6, v7}, Lcgd;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcgd;

    const/16 v4, 0xc20

    const-string v5, "\u5199CDR\u5931\u8d25"

    const-string v6, "\u6682\u65f6\u65e0\u6cd5\u5b8c\u6210\u652f\u4ed8"

    const-string v7, "\u91cd\u65b0\u8fdb\u884c\u652f\u4ed8"

    invoke-direct {v3, v4, v5, v6, v7}, Lcgd;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcgd;

    const/16 v4, 0xc24

    const-string v5, "\u7b49\u5019SCP\u54cd\u5e94\u5931\u8d25"

    const-string v6, "\u6682\u65f6\u65e0\u6cd5\u5b8c\u6210\u652f\u4ed8"

    const-string v7, "\u91cd\u65b0\u8fdb\u884c\u652f\u4ed8"

    invoke-direct {v3, v4, v5, v6, v7}, Lcgd;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcgh;->a()V

    invoke-virtual {p0, v0}, Lcgh;->a(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcgh;->g:Landroid/content/Context;

    const-string v3, "databaseSettings"

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "isInited"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    :cond_2
    move v0, v2

    goto/16 :goto_1

    :cond_3
    move v0, v2

    goto/16 :goto_1

    :catch_0
    move-exception v0

    goto/16 :goto_2
.end method
