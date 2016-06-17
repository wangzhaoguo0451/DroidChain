.class public final Lfvc;
.super Lfsi;
.source "GiftCombinationFetcher.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lfsi",
        "<",
        "Lcom/wandoujia/p4/gift/http/model/GiftModel;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Leww;

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 22
    invoke-direct {p0}, Lfsi;-><init>()V

    .line 23
    new-instance v0, Leww;

    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e0479

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Leww;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lfvc;->a:Leww;

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lfvc;->b:I

    .line 26
    return-void
.end method

.method public constructor <init>(Lcom/wandoujia/entities/app/IAppLiteInfo$AppType;)V
    .locals 3
    .parameter

    .prologue
    const v2, 0x7f0e0479

    .line 28
    invoke-direct {p0}, Lfsi;-><init>()V

    .line 29
    if-eqz p1, :cond_0

    .line 30
    new-instance v0, Leww;

    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Leww;-><init>(Ljava/lang/String;Lcom/wandoujia/entities/app/IAppLiteInfo$AppType;)V

    iput-object v0, p0, Lfvc;->a:Leww;

    .line 36
    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lfvc;->b:I

    .line 37
    return-void

    .line 33
    :cond_0
    new-instance v0, Leww;

    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Leww;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lfvc;->a:Leww;

    goto :goto_0
.end method


# virtual methods
.method protected final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final a(II)Ljava/util/List;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/p4/gift/http/model/GiftModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    iget v0, p0, Lfvc;->b:I

    if-le p1, v0, :cond_0

    .line 47
    iput p1, p0, Lfvc;->b:I

    .line 49
    :cond_0
    iget-object v0, p0, Lfvc;->a:Leww;

    iget v1, p0, Lfvc;->b:I

    invoke-virtual {v0, v1, p2}, Leww;->a(II)Ljava/util/List;

    move-result-object v0

    .line 50
    iget v1, p0, Lfvc;->b:I

    add-int/2addr v1, p2

    iput v1, p0, Lfvc;->b:I

    .line 52
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 53
    new-instance v1, Lfvd;

    invoke-direct {v1, v0}, Lfvd;-><init>(Ljava/util/List;)V

    .line 54
    invoke-virtual {v1}, Lfvd;->c()Ljava/util/List;

    move-result-object v0

    .line 56
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
