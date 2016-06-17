.class public final Lfve;
.super Lfsv;
.source "MyGiftFetcher.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lfsv",
        "<",
        "Lcom/wandoujia/p4/gift/http/model/GiftModel;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/wandoujia/entities/app/IAppLiteInfo$AppType;)V
    .locals 0
    .parameter

    .prologue
    .line 19
    invoke-direct {p0}, Lfsv;-><init>()V

    .line 20
    return-void
.end method


# virtual methods
.method protected final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final c()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/p4/gift/http/model/GiftModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 25
    new-instance v0, Lcql;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcql;-><init>(B)V

    .line 26
    invoke-static {}, Lesb;->b()Lfvu;

    move-result-object v1

    invoke-virtual {v1, v0}, Lfvu;->execute(Lcom/wandoujia/rpc/http/delegate/ApiDelegate;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method
