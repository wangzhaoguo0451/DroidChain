.class public final Lcom/wandoujia/logv3/model/packages/IASSearchResultPackage;
.super Lcom/squareup/wire/Message;
.source "IASSearchResultPackage.java"


# static fields
.field public static final DEFAULT_ITEM_ID:Ljava/lang/String; = ""

.field public static final DEFAULT_QUERY_UNDERSTANDING_RESULT:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/logv3/model/packages/IASSearchResultPackage$QueryUnderstandingScore;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_SECTION_RESULT:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/logv3/model/packages/IASSearchResultPackage$SectionResultPackage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final item_id:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final query_understanding_result:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REPEATED:Lcom/squareup/wire/Message$Label;
        tag = 0x1
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/logv3/model/packages/IASSearchResultPackage$QueryUnderstandingScore;",
            ">;"
        }
    .end annotation
.end field

.field public final section_result:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REPEATED:Lcom/squareup/wire/Message$Label;
        tag = 0x2
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/logv3/model/packages/IASSearchResultPackage$SectionResultPackage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/logv3/model/packages/IASSearchResultPackage;->DEFAULT_QUERY_UNDERSTANDING_RESULT:Ljava/util/List;

    .line 22
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/logv3/model/packages/IASSearchResultPackage;->DEFAULT_SECTION_RESULT:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Lcom/wandoujia/logv3/model/packages/IASSearchResultPackage$Builder;)V
    .locals 1
    .parameter

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message$Builder;)V

    .line 39
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/IASSearchResultPackage$Builder;->query_understanding_result:Ljava/util/List;

    invoke-static {v0}, Lcom/wandoujia/logv3/model/packages/IASSearchResultPackage;->immutableCopyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/IASSearchResultPackage;->query_understanding_result:Ljava/util/List;

    .line 40
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/IASSearchResultPackage$Builder;->section_result:Ljava/util/List;

    invoke-static {v0}, Lcom/wandoujia/logv3/model/packages/IASSearchResultPackage;->immutableCopyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/IASSearchResultPackage;->section_result:Ljava/util/List;

    .line 41
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/IASSearchResultPackage$Builder;->item_id:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/IASSearchResultPackage;->item_id:Ljava/lang/String;

    .line 42
    return-void
.end method

.method synthetic constructor <init>(Lcom/wandoujia/logv3/model/packages/IASSearchResultPackage$Builder;Ld;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/wandoujia/logv3/model/packages/IASSearchResultPackage;-><init>(Lcom/wandoujia/logv3/model/packages/IASSearchResultPackage$Builder;)V

    return-void
.end method

.method static synthetic access$000(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 19
    invoke-static {p0}, Lcom/wandoujia/logv3/model/packages/IASSearchResultPackage;->copyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 19
    invoke-static {p0}, Lcom/wandoujia/logv3/model/packages/IASSearchResultPackage;->copyOf(Ljava/util/List;)Ljava/util/List;

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

    .line 46
    if-ne p1, p0, :cond_1

    .line 49
    :cond_0
    :goto_0
    return v0

    .line 47
    :cond_1
    instance-of v2, p1, Lcom/wandoujia/logv3/model/packages/IASSearchResultPackage;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 48
    :cond_2
    check-cast p1, Lcom/wandoujia/logv3/model/packages/IASSearchResultPackage;

    .line 49
    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/IASSearchResultPackage;->query_understanding_result:Ljava/util/List;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/IASSearchResultPackage;->query_understanding_result:Ljava/util/List;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/IASSearchResultPackage;->equals(Ljava/util/List;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/IASSearchResultPackage;->section_result:Ljava/util/List;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/IASSearchResultPackage;->section_result:Ljava/util/List;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/IASSearchResultPackage;->equals(Ljava/util/List;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/IASSearchResultPackage;->item_id:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/IASSearchResultPackage;->item_id:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/IASSearchResultPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 56
    iget v0, p0, Lcom/wandoujia/logv3/model/packages/IASSearchResultPackage;->hashCode:I

    .line 57
    if-nez v0, :cond_1

    .line 58
    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/IASSearchResultPackage;->query_understanding_result:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/IASSearchResultPackage;->query_understanding_result:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    .line 59
    :goto_0
    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/IASSearchResultPackage;->section_result:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/wandoujia/logv3/model/packages/IASSearchResultPackage;->section_result:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 60
    mul-int/lit8 v1, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/IASSearchResultPackage;->item_id:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/IASSearchResultPackage;->item_id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v1

    .line 61
    iput v0, p0, Lcom/wandoujia/logv3/model/packages/IASSearchResultPackage;->hashCode:I

    .line 63
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 58
    goto :goto_0

    .line 60
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method
