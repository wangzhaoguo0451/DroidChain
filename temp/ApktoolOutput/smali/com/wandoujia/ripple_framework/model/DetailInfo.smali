.class public Lcom/wandoujia/ripple_framework/model/DetailInfo;
.super Ljava/lang/Object;
.source "DetailInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/wandoujia/ripple_framework/model/DetailInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Lcom/wandoujia/ripple_framework/view/Anchor;

.field public b:Leqw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Leqw",
            "<",
            "Lcom/wandoujia/ripple_framework/model/Model;",
            ">;"
        }
    .end annotation
.end field

.field public c:I

.field private d:Ljava/lang/String;

.field private e:I

.field private f:J

.field private g:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 94
    new-instance v0, Lhhr;

    invoke-direct {v0}, Lhhr;-><init>()V

    sput-object v0, Lcom/wandoujia/ripple_framework/model/DetailInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/ripple_framework/model/DetailInfo;->d:Ljava/lang/String;

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/wandoujia/ripple_framework/model/DetailInfo;->e:I

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/wandoujia/ripple_framework/model/DetailInfo;->f:J

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/wandoujia/ripple_framework/model/DetailInfo;->g:I

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 111
    if-lez v0, :cond_0

    .line 112
    const-class v0, Lcom/wandoujia/ripple_framework/view/Anchor;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/view/Anchor;

    iput-object v0, p0, Lcom/wandoujia/ripple_framework/model/DetailInfo;->a:Lcom/wandoujia/ripple_framework/view/Anchor;

    .line 114
    :cond_0
    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/wandoujia/ripple_framework/model/DetailInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/view/View;JI)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput-object p1, p0, Lcom/wandoujia/ripple_framework/model/DetailInfo;->d:Ljava/lang/String;

    .line 122
    const/4 v0, 0x0

    iput v0, p0, Lcom/wandoujia/ripple_framework/model/DetailInfo;->e:I

    .line 123
    iput-wide p3, p0, Lcom/wandoujia/ripple_framework/model/DetailInfo;->f:J

    .line 124
    iput p5, p0, Lcom/wandoujia/ripple_framework/model/DetailInfo;->g:I

    .line 125
    if-eqz p2, :cond_0

    .line 126
    new-instance v0, Lcom/wandoujia/ripple_framework/view/Anchor;

    invoke-direct {v0, p2}, Lcom/wandoujia/ripple_framework/view/Anchor;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/wandoujia/ripple_framework/model/DetailInfo;->a:Lcom/wandoujia/ripple_framework/view/Anchor;

    .line 128
    :cond_0
    return-void
.end method

.method private static a(Ljava/util/List;J)I
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/ripple_framework/model/Model;",
            ">;J)I"
        }
    .end annotation

    .prologue
    .line 357
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 358
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/model/Model;

    invoke-virtual {v0}, Lcom/wandoujia/ripple_framework/model/Model;->b()J

    move-result-wide v2

    cmp-long v0, v2, p1

    if-nez v0, :cond_0

    .line 362
    :goto_1
    return v1

    .line 357
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 362
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public static a(Lhhw;Landroid/os/Bundle;)Lcom/wandoujia/ripple_framework/model/DetailInfo;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 199
    const-string v0, "detail"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/model/DetailInfo;

    .line 200
    iget-object v1, v0, Lcom/wandoujia/ripple_framework/model/DetailInfo;->d:Ljava/lang/String;

    invoke-interface {p0, v1}, Lhhw;->findList(Ljava/lang/String;)Leqw;

    move-result-object v1

    .line 201
    if-eqz v1, :cond_0

    .line 202
    invoke-virtual {v1}, Leqw;->c()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/model/DetailInfo;->a(Ljava/util/List;)V

    .line 204
    :cond_0
    return-object v0
.end method

.method private static a(Lcom/wandoujia/ripple_framework/model/Model;Ljava/util/List;Ljava/util/Set;)Lcom/wandoujia/ripple_framework/model/Model;
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/wandoujia/ripple_framework/model/Model;",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/ripple_framework/model/Model;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;",
            ">;)",
            "Lcom/wandoujia/ripple_framework/model/Model;"
        }
    .end annotation

    .prologue
    .line 379
    const/4 v0, 0x0

    .line 380
    iget-object v1, p0, Lcom/wandoujia/ripple_framework/model/Model;->k:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    invoke-interface {p2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 383
    :goto_0
    if-eqz p0, :cond_0

    .line 384
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 386
    :cond_0
    return-object p0

    :cond_1
    move-object p0, v0

    goto :goto_0
.end method

.method private b()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 366
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 367
    iget v1, p0, Lcom/wandoujia/ripple_framework/model/DetailInfo;->g:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    .line 368
    sget-object v1, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->APP:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 370
    :cond_0
    iget v1, p0, Lcom/wandoujia/ripple_framework/model/DetailInfo;->g:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_1

    .line 371
    sget-object v1, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->FEED:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 373
    :cond_1
    return-object v0
.end method

.method private b(Ljava/util/List;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/ripple_framework/model/Model;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 329
    iget v0, p0, Lcom/wandoujia/ripple_framework/model/DetailInfo;->g:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_1

    .line 330
    iget v0, p0, Lcom/wandoujia/ripple_framework/model/DetailInfo;->e:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/model/Model;

    .line 331
    invoke-virtual {v0}, Lcom/wandoujia/ripple_framework/model/Model;->b()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/wandoujia/ripple_framework/model/DetailInfo;->f:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 354
    :goto_0
    return-void

    .line 334
    :cond_0
    new-instance v2, Lhhx;

    iget-object v3, p0, Lcom/wandoujia/ripple_framework/model/DetailInfo;->d:Ljava/lang/String;

    invoke-direct {v2, v0, v3}, Lhhx;-><init>(Lcom/wandoujia/ripple_framework/model/Model;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/wandoujia/ripple_framework/model/DetailInfo;->b:Leqw;

    .line 335
    iput v1, p0, Lcom/wandoujia/ripple_framework/model/DetailInfo;->c:I

    goto :goto_0

    .line 339
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 340
    invoke-direct {p0}, Lcom/wandoujia/ripple_framework/model/DetailInfo;->b()Ljava/util/Set;

    move-result-object v3

    .line 341
    iget v0, p0, Lcom/wandoujia/ripple_framework/model/DetailInfo;->g:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    move v1, v0

    .line 342
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/model/Model;

    .line 343
    invoke-static {v0, v2, v3}, Lcom/wandoujia/ripple_framework/model/DetailInfo;->a(Lcom/wandoujia/ripple_framework/model/Model;Ljava/util/List;Ljava/util/Set;)Lcom/wandoujia/ripple_framework/model/Model;

    .line 344
    if-eqz v1, :cond_3

    .line 345
    iget-object v0, v0, Lcom/wandoujia/ripple_framework/model/Model;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/model/Model;

    .line 346
    invoke-static {v0, v2, v3}, Lcom/wandoujia/ripple_framework/model/DetailInfo;->a(Lcom/wandoujia/ripple_framework/model/Model;Ljava/util/List;Ljava/util/Set;)Lcom/wandoujia/ripple_framework/model/Model;

    goto :goto_1

    .line 352
    :cond_4
    new-instance v0, Lhhx;

    iget-object v1, p0, Lcom/wandoujia/ripple_framework/model/DetailInfo;->d:Ljava/lang/String;

    invoke-direct {v0, v2, v1}, Lhhx;-><init>(Ljava/util/List;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/wandoujia/ripple_framework/model/DetailInfo;->b:Leqw;

    .line 353
    iget-wide v0, p0, Lcom/wandoujia/ripple_framework/model/DetailInfo;->f:J

    invoke-static {v2, v0, v1}, Lcom/wandoujia/ripple_framework/model/DetailInfo;->a(Ljava/util/List;J)I

    move-result v0

    iput v0, p0, Lcom/wandoujia/ripple_framework/model/DetailInfo;->c:I

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/ripple_framework/model/Model;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 209
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wandoujia/ripple_framework/model/DetailInfo;->b:Leqw;

    .line 210
    const/4 v0, -0x1

    iput v0, p0, Lcom/wandoujia/ripple_framework/model/DetailInfo;->c:I

    .line 213
    iget v0, p0, Lcom/wandoujia/ripple_framework/model/DetailInfo;->e:I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 234
    :cond_0
    :goto_0
    return-void

    .line 218
    :cond_1
    iget v0, p0, Lcom/wandoujia/ripple_framework/model/DetailInfo;->g:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 219
    iget v0, p0, Lcom/wandoujia/ripple_framework/model/DetailInfo;->e:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/wandoujia/ripple_framework/model/DetailInfo;->e:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/model/Model;

    iget-object v0, v0, Lcom/wandoujia/ripple_framework/model/Model;->f:Lcom/wandoujia/ripple_framework/model/Model;

    invoke-virtual {v0}, Lcom/wandoujia/ripple_framework/model/Model;->b()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/wandoujia/ripple_framework/model/DetailInfo;->f:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_0

    new-instance v1, Lhhx;

    iget v0, p0, Lcom/wandoujia/ripple_framework/model/DetailInfo;->e:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/model/Model;

    iget-object v0, v0, Lcom/wandoujia/ripple_framework/model/Model;->f:Lcom/wandoujia/ripple_framework/model/Model;

    iget-object v3, p0, Lcom/wandoujia/ripple_framework/model/DetailInfo;->d:Ljava/lang/String;

    invoke-direct {v1, v0, v3}, Lhhx;-><init>(Lcom/wandoujia/ripple_framework/model/Model;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/wandoujia/ripple_framework/model/DetailInfo;->b:Leqw;

    iput v2, p0, Lcom/wandoujia/ripple_framework/model/DetailInfo;->c:I

    goto :goto_0

    .line 223
    :cond_2
    iget v0, p0, Lcom/wandoujia/ripple_framework/model/DetailInfo;->g:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_5

    .line 224
    iget v0, p0, Lcom/wandoujia/ripple_framework/model/DetailInfo;->e:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/wandoujia/ripple_framework/model/DetailInfo;->e:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/model/Model;

    iget-object v3, v0, Lcom/wandoujia/ripple_framework/model/Model;->h:Ljava/util/List;

    move v1, v2

    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/model/Model;

    invoke-virtual {v0}, Lcom/wandoujia/ripple_framework/model/Model;->b()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/wandoujia/ripple_framework/model/DetailInfo;->f:J

    cmp-long v0, v4, v6

    if-nez v0, :cond_3

    iget v0, p0, Lcom/wandoujia/ripple_framework/model/DetailInfo;->g:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_4

    new-instance v0, Lhhx;

    iget-object v4, p0, Lcom/wandoujia/ripple_framework/model/DetailInfo;->d:Ljava/lang/String;

    invoke-direct {v0, v3, v4}, Lhhx;-><init>(Ljava/util/List;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/wandoujia/ripple_framework/model/DetailInfo;->b:Leqw;

    iput v1, p0, Lcom/wandoujia/ripple_framework/model/DetailInfo;->c:I

    :cond_3
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_4
    new-instance v4, Lhhx;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/model/Model;

    iget-object v5, p0, Lcom/wandoujia/ripple_framework/model/DetailInfo;->d:Ljava/lang/String;

    invoke-direct {v4, v0, v5}, Lhhx;-><init>(Lcom/wandoujia/ripple_framework/model/Model;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/wandoujia/ripple_framework/model/DetailInfo;->b:Leqw;

    iput v2, p0, Lcom/wandoujia/ripple_framework/model/DetailInfo;->c:I

    goto :goto_2

    .line 228
    :cond_5
    iget v0, p0, Lcom/wandoujia/ripple_framework/model/DetailInfo;->g:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_b

    .line 229
    iget v0, p0, Lcom/wandoujia/ripple_framework/model/DetailInfo;->e:I

    if-gez v0, :cond_c

    iget-wide v0, p0, Lcom/wandoujia/ripple_framework/model/DetailInfo;->f:J

    invoke-static {p1, v0, v1}, Lcom/wandoujia/ripple_framework/model/DetailInfo;->a(Ljava/util/List;J)I

    move-result v0

    if-ltz v0, :cond_6

    move v3, v0

    :goto_3
    if-ltz v3, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_0

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/model/Model;

    invoke-virtual {v0}, Lcom/wandoujia/ripple_framework/model/Model;->b()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/wandoujia/ripple_framework/model/DetailInfo;->f:J

    cmp-long v1, v4, v6

    if-nez v1, :cond_0

    iget v1, p0, Lcom/wandoujia/ripple_framework/model/DetailInfo;->g:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_8

    new-instance v1, Lhhx;

    iget-object v3, p0, Lcom/wandoujia/ripple_framework/model/DetailInfo;->d:Ljava/lang/String;

    invoke-direct {v1, v0, v3}, Lhhx;-><init>(Lcom/wandoujia/ripple_framework/model/Model;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/wandoujia/ripple_framework/model/DetailInfo;->b:Leqw;

    iput v2, p0, Lcom/wandoujia/ripple_framework/model/DetailInfo;->c:I

    goto/16 :goto_0

    :cond_6
    move v1, v2

    :goto_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_c

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/model/Model;

    iget-object v0, v0, Lcom/wandoujia/ripple_framework/model/Model;->i:Ljava/util/List;

    iget-wide v4, p0, Lcom/wandoujia/ripple_framework/model/DetailInfo;->f:J

    invoke-static {v0, v4, v5}, Lcom/wandoujia/ripple_framework/model/DetailInfo;->a(Ljava/util/List;J)I

    move-result v3

    if-ltz v3, :cond_7

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/model/Model;

    iget-object p1, v0, Lcom/wandoujia/ripple_framework/model/Model;->i:Ljava/util/List;

    goto :goto_3

    :cond_7
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v3

    goto :goto_4

    :cond_8
    invoke-direct {p0}, Lcom/wandoujia/ripple_framework/model/DetailInfo;->b()Ljava/util/Set;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    add-int/lit8 v1, v3, -0x1

    move v2, v1

    :goto_5
    if-ltz v2, :cond_9

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wandoujia/ripple_framework/model/Model;

    iget-object v1, v1, Lcom/wandoujia/ripple_framework/model/Model;->c:Lcom/wandoujia/ripple_framework/model/Model;

    iget-object v6, v0, Lcom/wandoujia/ripple_framework/model/Model;->c:Lcom/wandoujia/ripple_framework/model/Model;

    if-ne v1, v6, :cond_9

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wandoujia/ripple_framework/model/Model;

    invoke-static {v1, v5, v4}, Lcom/wandoujia/ripple_framework/model/DetailInfo;->a(Lcom/wandoujia/ripple_framework/model/Model;Ljava/util/List;Ljava/util/Set;)Lcom/wandoujia/ripple_framework/model/Model;

    add-int/lit8 v1, v2, -0x1

    move v2, v1

    goto :goto_5

    :cond_9
    invoke-static {v5}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lcom/wandoujia/ripple_framework/model/DetailInfo;->c:I

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v3, 0x1

    move v2, v1

    :goto_6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_a

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wandoujia/ripple_framework/model/Model;

    iget-object v1, v1, Lcom/wandoujia/ripple_framework/model/Model;->c:Lcom/wandoujia/ripple_framework/model/Model;

    iget-object v3, v0, Lcom/wandoujia/ripple_framework/model/Model;->c:Lcom/wandoujia/ripple_framework/model/Model;

    if-ne v1, v3, :cond_a

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wandoujia/ripple_framework/model/Model;

    invoke-static {v1, v5, v4}, Lcom/wandoujia/ripple_framework/model/DetailInfo;->a(Lcom/wandoujia/ripple_framework/model/Model;Ljava/util/List;Ljava/util/Set;)Lcom/wandoujia/ripple_framework/model/Model;

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_6

    :cond_a
    new-instance v0, Lhhx;

    iget-object v1, p0, Lcom/wandoujia/ripple_framework/model/DetailInfo;->d:Ljava/lang/String;

    invoke-direct {v0, v5, v1}, Lhhx;-><init>(Ljava/util/List;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/wandoujia/ripple_framework/model/DetailInfo;->b:Leqw;

    goto/16 :goto_0

    .line 233
    :cond_b
    invoke-direct {p0, p1}, Lcom/wandoujia/ripple_framework/model/DetailInfo;->b(Ljava/util/List;)V

    goto/16 :goto_0

    :cond_c
    move v3, v0

    goto/16 :goto_3
.end method

.method public final a()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 131
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/model/DetailInfo;->b:Leqw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/ripple_framework/model/DetailInfo;->b:Leqw;

    invoke-virtual {v0}, Leqw;->c()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v1

    .line 142
    :goto_0
    return v0

    .line 134
    :cond_1
    iget v0, p0, Lcom/wandoujia/ripple_framework/model/DetailInfo;->c:I

    if-ltz v0, :cond_2

    iget v0, p0, Lcom/wandoujia/ripple_framework/model/DetailInfo;->c:I

    iget-object v2, p0, Lcom/wandoujia/ripple_framework/model/DetailInfo;->b:Leqw;

    invoke-virtual {v2}, Leqw;->c()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_3

    :cond_2
    move v0, v1

    .line 135
    goto :goto_0

    .line 137
    :cond_3
    sget-object v2, Lhhs;->a:[I

    iget-object v0, p0, Lcom/wandoujia/ripple_framework/model/DetailInfo;->b:Leqw;

    iget v3, p0, Lcom/wandoujia/ripple_framework/model/DetailInfo;->c:I

    invoke-virtual {v0, v3}, Leqw;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/model/Model;

    iget-object v0, v0, Lcom/wandoujia/ripple_framework/model/Model;->k:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    invoke-virtual {v0}, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_0

    move v0, v1

    .line 142
    goto :goto_0

    .line 140
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 137
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 391
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 396
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/model/DetailInfo;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 397
    iget v0, p0, Lcom/wandoujia/ripple_framework/model/DetailInfo;->e:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 398
    iget-wide v0, p0, Lcom/wandoujia/ripple_framework/model/DetailInfo;->f:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 399
    iget v0, p0, Lcom/wandoujia/ripple_framework/model/DetailInfo;->g:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 400
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/model/DetailInfo;->a:Lcom/wandoujia/ripple_framework/view/Anchor;

    if-eqz v0, :cond_0

    .line 401
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 402
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/model/DetailInfo;->a:Lcom/wandoujia/ripple_framework/view/Anchor;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 406
    :goto_0
    return-void

    .line 404
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method
