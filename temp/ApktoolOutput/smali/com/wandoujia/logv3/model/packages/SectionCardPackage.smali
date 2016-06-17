.class public final Lcom/wandoujia/logv3/model/packages/SectionCardPackage;
.super Lcom/squareup/wire/Message;
.source "SectionCardPackage.java"


# static fields
.field public static final DEFAULT_SECTION_CARD_ID:Ljava/lang/String; = ""

.field public static final DEFAULT_SECTION_EXTRA:Ljava/lang/String; = ""

.field public static final DEFAULT_SECTION_ID:Ljava/lang/String; = ""

.field public static final DEFAULT_SECTION_INDEX:Ljava/lang/Integer; = null

.field public static final DEFAULT_SECTION_TITLE:Ljava/lang/String; = ""


# instance fields
.field public final section_card_id:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x4
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final section_extra:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x5
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final section_id:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final section_index:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final section_title:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/logv3/model/packages/SectionCardPackage;->DEFAULT_SECTION_INDEX:Ljava/lang/Integer;

    return-void
.end method

.method private constructor <init>(Lcom/wandoujia/logv3/model/packages/SectionCardPackage$Builder;)V
    .locals 1
    .parameter

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message$Builder;)V

    .line 51
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/SectionCardPackage$Builder;->section_id:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/SectionCardPackage;->section_id:Ljava/lang/String;

    .line 52
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/SectionCardPackage$Builder;->section_title:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/SectionCardPackage;->section_title:Ljava/lang/String;

    .line 53
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/SectionCardPackage$Builder;->section_index:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/SectionCardPackage;->section_index:Ljava/lang/Integer;

    .line 54
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/SectionCardPackage$Builder;->section_card_id:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/SectionCardPackage;->section_card_id:Ljava/lang/String;

    .line 55
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/SectionCardPackage$Builder;->section_extra:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/SectionCardPackage;->section_extra:Ljava/lang/String;

    .line 56
    return-void
.end method

.method synthetic constructor <init>(Lcom/wandoujia/logv3/model/packages/SectionCardPackage$Builder;Ld;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/wandoujia/logv3/model/packages/SectionCardPackage;-><init>(Lcom/wandoujia/logv3/model/packages/SectionCardPackage$Builder;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 60
    if-ne p1, p0, :cond_1

    .line 63
    :cond_0
    :goto_0
    return v0

    .line 61
    :cond_1
    instance-of v2, p1, Lcom/wandoujia/logv3/model/packages/SectionCardPackage;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 62
    :cond_2
    check-cast p1, Lcom/wandoujia/logv3/model/packages/SectionCardPackage;

    .line 63
    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/SectionCardPackage;->section_id:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/SectionCardPackage;->section_id:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/SectionCardPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/SectionCardPackage;->section_title:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/SectionCardPackage;->section_title:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/SectionCardPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/SectionCardPackage;->section_index:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/SectionCardPackage;->section_index:Ljava/lang/Integer;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/SectionCardPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/SectionCardPackage;->section_card_id:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/SectionCardPackage;->section_card_id:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/SectionCardPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/SectionCardPackage;->section_extra:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/SectionCardPackage;->section_extra:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/SectionCardPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

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

    .line 72
    iget v0, p0, Lcom/wandoujia/logv3/model/packages/SectionCardPackage;->hashCode:I

    .line 73
    if-nez v0, :cond_1

    .line 74
    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/SectionCardPackage;->section_id:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/SectionCardPackage;->section_id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 75
    :goto_0
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/SectionCardPackage;->section_title:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/SectionCardPackage;->section_title:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    .line 76
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/SectionCardPackage;->section_index:Ljava/lang/Integer;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/SectionCardPackage;->section_index:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    .line 77
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/SectionCardPackage;->section_card_id:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/SectionCardPackage;->section_card_id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v0, v2

    .line 78
    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/SectionCardPackage;->section_extra:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/wandoujia/logv3/model/packages/SectionCardPackage;->section_extra:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 79
    iput v0, p0, Lcom/wandoujia/logv3/model/packages/SectionCardPackage;->hashCode:I

    .line 81
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 74
    goto :goto_0

    :cond_3
    move v0, v1

    .line 75
    goto :goto_1

    :cond_4
    move v0, v1

    .line 76
    goto :goto_2

    :cond_5
    move v0, v1

    .line 77
    goto :goto_3
.end method
