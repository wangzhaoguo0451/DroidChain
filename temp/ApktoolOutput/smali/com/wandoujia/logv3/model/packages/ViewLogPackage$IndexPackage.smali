.class public final Lcom/wandoujia/logv3/model/packages/ViewLogPackage$IndexPackage;
.super Lcom/squareup/wire/Message;
.source "ViewLogPackage.java"


# static fields
.field public static final DEFAULT_INDEX:Ljava/lang/Integer;

.field public static final DEFAULT_SUB_INDEX:Ljava/lang/Integer;


# instance fields
.field public final index:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final sub_index:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 197
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$IndexPackage;->DEFAULT_INDEX:Ljava/lang/Integer;

    .line 198
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$IndexPackage;->DEFAULT_SUB_INDEX:Ljava/lang/Integer;

    return-void
.end method

.method private constructor <init>(Lcom/wandoujia/logv3/model/packages/ViewLogPackage$IndexPackage$Builder;)V
    .locals 1
    .parameter

    .prologue
    .line 213
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message$Builder;)V

    .line 214
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$IndexPackage$Builder;->index:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$IndexPackage;->index:Ljava/lang/Integer;

    .line 215
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$IndexPackage$Builder;->sub_index:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$IndexPackage;->sub_index:Ljava/lang/Integer;

    .line 216
    return-void
.end method

.method synthetic constructor <init>(Lcom/wandoujia/logv3/model/packages/ViewLogPackage$IndexPackage$Builder;Ld;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 195
    invoke-direct {p0, p1}, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$IndexPackage;-><init>(Lcom/wandoujia/logv3/model/packages/ViewLogPackage$IndexPackage$Builder;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 220
    if-ne p1, p0, :cond_1

    .line 223
    :cond_0
    :goto_0
    return v0

    .line 221
    :cond_1
    instance-of v2, p1, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$IndexPackage;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 222
    :cond_2
    check-cast p1, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$IndexPackage;

    .line 223
    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$IndexPackage;->index:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$IndexPackage;->index:Ljava/lang/Integer;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$IndexPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$IndexPackage;->sub_index:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$IndexPackage;->sub_index:Ljava/lang/Integer;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$IndexPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 229
    iget v0, p0, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$IndexPackage;->hashCode:I

    .line 230
    if-nez v0, :cond_1

    .line 231
    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$IndexPackage;->index:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$IndexPackage;->index:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    .line 232
    :goto_0
    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$IndexPackage;->sub_index:Ljava/lang/Integer;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$IndexPackage;->sub_index:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 233
    iput v0, p0, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$IndexPackage;->hashCode:I

    .line 235
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 231
    goto :goto_0
.end method
