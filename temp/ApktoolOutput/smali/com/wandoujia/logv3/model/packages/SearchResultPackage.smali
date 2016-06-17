.class public final Lcom/wandoujia/logv3/model/packages/SearchResultPackage;
.super Lcom/squareup/wire/Message;
.source "SearchResultPackage.java"


# static fields
.field public static final DEFAULT_ADJUSTED:Ljava/lang/Boolean;

.field public static final DEFAULT_SEARCH_RESULT_PACKAGE:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/logv3/model/packages/ContentPackage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final adjusted:Ljava/lang/Boolean;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->BOOL:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final search_result_package:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REPEATED:Lcom/squareup/wire/Message$Label;
        tag = 0x2
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/logv3/model/packages/ContentPackage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/logv3/model/packages/SearchResultPackage;->DEFAULT_ADJUSTED:Ljava/lang/Boolean;

    .line 19
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/logv3/model/packages/SearchResultPackage;->DEFAULT_SEARCH_RESULT_PACKAGE:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Lcom/wandoujia/logv3/model/packages/SearchResultPackage$Builder;)V
    .locals 1
    .parameter

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message$Builder;)V

    .line 35
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/SearchResultPackage$Builder;->adjusted:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/SearchResultPackage;->adjusted:Ljava/lang/Boolean;

    .line 36
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/SearchResultPackage$Builder;->search_result_package:Ljava/util/List;

    invoke-static {v0}, Lcom/wandoujia/logv3/model/packages/SearchResultPackage;->immutableCopyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/SearchResultPackage;->search_result_package:Ljava/util/List;

    .line 37
    return-void
.end method

.method synthetic constructor <init>(Lcom/wandoujia/logv3/model/packages/SearchResultPackage$Builder;Ld;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/wandoujia/logv3/model/packages/SearchResultPackage;-><init>(Lcom/wandoujia/logv3/model/packages/SearchResultPackage$Builder;)V

    return-void
.end method

.method static synthetic access$000(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 16
    invoke-static {p0}, Lcom/wandoujia/logv3/model/packages/SearchResultPackage;->copyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 41
    if-ne p1, p0, :cond_1

    .line 44
    :cond_0
    :goto_0
    return v0

    .line 42
    :cond_1
    instance-of v2, p1, Lcom/wandoujia/logv3/model/packages/SearchResultPackage;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 43
    :cond_2
    check-cast p1, Lcom/wandoujia/logv3/model/packages/SearchResultPackage;

    .line 44
    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/SearchResultPackage;->adjusted:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/SearchResultPackage;->adjusted:Ljava/lang/Boolean;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/SearchResultPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/SearchResultPackage;->search_result_package:Ljava/util/List;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/SearchResultPackage;->search_result_package:Ljava/util/List;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/SearchResultPackage;->equals(Ljava/util/List;Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 50
    iget v0, p0, Lcom/wandoujia/logv3/model/packages/SearchResultPackage;->hashCode:I

    .line 51
    if-nez v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/SearchResultPackage;->adjusted:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/SearchResultPackage;->adjusted:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    .line 53
    :goto_0
    mul-int/lit8 v1, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/SearchResultPackage;->search_result_package:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/SearchResultPackage;->search_result_package:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v1

    .line 54
    iput v0, p0, Lcom/wandoujia/logv3/model/packages/SearchResultPackage;->hashCode:I

    .line 56
    :cond_0
    return v0

    .line 52
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 53
    :cond_2
    const/4 v0, 0x1

    goto :goto_1
.end method
