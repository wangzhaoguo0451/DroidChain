.class public final Lcom/wandoujia/logv3/model/packages/IASSearchResultPackage$SectionResultPackage;
.super Lcom/squareup/wire/Message;
.source "IASSearchResultPackage.java"


# static fields
.field public static final DEFAULT_ITEM_NUM:Ljava/lang/Integer; = null

.field public static final DEFAULT_SECTION_TYPE:Ljava/lang/String; = ""

.field public static final DEFAULT_TITLE:Ljava/lang/String; = ""


# instance fields
.field public final item_num:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final section_type:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final title:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 193
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/logv3/model/packages/IASSearchResultPackage$SectionResultPackage;->DEFAULT_ITEM_NUM:Ljava/lang/Integer;

    return-void
.end method

.method private constructor <init>(Lcom/wandoujia/logv3/model/packages/IASSearchResultPackage$SectionResultPackage$Builder;)V
    .locals 1
    .parameter

    .prologue
    .line 214
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message$Builder;)V

    .line 215
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/IASSearchResultPackage$SectionResultPackage$Builder;->section_type:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/IASSearchResultPackage$SectionResultPackage;->section_type:Ljava/lang/String;

    .line 216
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/IASSearchResultPackage$SectionResultPackage$Builder;->title:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/IASSearchResultPackage$SectionResultPackage;->title:Ljava/lang/String;

    .line 217
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/IASSearchResultPackage$SectionResultPackage$Builder;->item_num:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/IASSearchResultPackage$SectionResultPackage;->item_num:Ljava/lang/Integer;

    .line 218
    return-void
.end method

.method synthetic constructor <init>(Lcom/wandoujia/logv3/model/packages/IASSearchResultPackage$SectionResultPackage$Builder;Ld;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 189
    invoke-direct {p0, p1}, Lcom/wandoujia/logv3/model/packages/IASSearchResultPackage$SectionResultPackage;-><init>(Lcom/wandoujia/logv3/model/packages/IASSearchResultPackage$SectionResultPackage$Builder;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 222
    if-ne p1, p0, :cond_1

    .line 225
    :cond_0
    :goto_0
    return v0

    .line 223
    :cond_1
    instance-of v2, p1, Lcom/wandoujia/logv3/model/packages/IASSearchResultPackage$SectionResultPackage;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 224
    :cond_2
    check-cast p1, Lcom/wandoujia/logv3/model/packages/IASSearchResultPackage$SectionResultPackage;

    .line 225
    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/IASSearchResultPackage$SectionResultPackage;->section_type:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/IASSearchResultPackage$SectionResultPackage;->section_type:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/IASSearchResultPackage$SectionResultPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/IASSearchResultPackage$SectionResultPackage;->title:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/IASSearchResultPackage$SectionResultPackage;->title:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/IASSearchResultPackage$SectionResultPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/IASSearchResultPackage$SectionResultPackage;->item_num:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/IASSearchResultPackage$SectionResultPackage;->item_num:Ljava/lang/Integer;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/IASSearchResultPackage$SectionResultPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

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

    .line 232
    iget v0, p0, Lcom/wandoujia/logv3/model/packages/IASSearchResultPackage$SectionResultPackage;->hashCode:I

    .line 233
    if-nez v0, :cond_1

    .line 234
    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/IASSearchResultPackage$SectionResultPackage;->section_type:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/IASSearchResultPackage$SectionResultPackage;->section_type:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 235
    :goto_0
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/IASSearchResultPackage$SectionResultPackage;->title:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/IASSearchResultPackage$SectionResultPackage;->title:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    .line 236
    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/IASSearchResultPackage$SectionResultPackage;->item_num:Ljava/lang/Integer;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/wandoujia/logv3/model/packages/IASSearchResultPackage$SectionResultPackage;->item_num:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 237
    iput v0, p0, Lcom/wandoujia/logv3/model/packages/IASSearchResultPackage$SectionResultPackage;->hashCode:I

    .line 239
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 234
    goto :goto_0

    :cond_3
    move v0, v1

    .line 235
    goto :goto_1
.end method
