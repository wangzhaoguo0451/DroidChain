.class public final Lcom/wandoujia/logv3/model/packages/StartpageCardPackage;
.super Lcom/squareup/wire/Message;
.source "StartpageCardPackage.java"


# static fields
.field public static final DEFAULT_STARTPAGE_CARD_FEED_NAME:Ljava/lang/String; = ""

.field public static final DEFAULT_STARTPAGE_CARD_ID:Ljava/lang/String; = ""

.field public static final DEFAULT_STARTPAGE_CARD_TEMPLATE:Ljava/lang/String; = ""

.field public static final DEFAULT_STARTPAGE_SUB_CARD_LIST:Ljava/lang/String; = ""


# instance fields
.field public final startpage_card_feed_name:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final startpage_card_id:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final startpage_card_template:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final startpage_sub_card_list:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x4
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/wandoujia/logv3/model/packages/StartpageCardPackage$Builder;)V
    .locals 1
    .parameter

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message$Builder;)V

    .line 46
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/StartpageCardPackage$Builder;->startpage_card_feed_name:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/StartpageCardPackage;->startpage_card_feed_name:Ljava/lang/String;

    .line 47
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/StartpageCardPackage$Builder;->startpage_card_template:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/StartpageCardPackage;->startpage_card_template:Ljava/lang/String;

    .line 48
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/StartpageCardPackage$Builder;->startpage_card_id:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/StartpageCardPackage;->startpage_card_id:Ljava/lang/String;

    .line 49
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/StartpageCardPackage$Builder;->startpage_sub_card_list:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/StartpageCardPackage;->startpage_sub_card_list:Ljava/lang/String;

    .line 50
    return-void
.end method

.method synthetic constructor <init>(Lcom/wandoujia/logv3/model/packages/StartpageCardPackage$Builder;Ld;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/wandoujia/logv3/model/packages/StartpageCardPackage;-><init>(Lcom/wandoujia/logv3/model/packages/StartpageCardPackage$Builder;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 54
    if-ne p1, p0, :cond_1

    .line 57
    :cond_0
    :goto_0
    return v0

    .line 55
    :cond_1
    instance-of v2, p1, Lcom/wandoujia/logv3/model/packages/StartpageCardPackage;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 56
    :cond_2
    check-cast p1, Lcom/wandoujia/logv3/model/packages/StartpageCardPackage;

    .line 57
    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/StartpageCardPackage;->startpage_card_feed_name:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/StartpageCardPackage;->startpage_card_feed_name:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/StartpageCardPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/StartpageCardPackage;->startpage_card_template:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/StartpageCardPackage;->startpage_card_template:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/StartpageCardPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/StartpageCardPackage;->startpage_card_id:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/StartpageCardPackage;->startpage_card_id:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/StartpageCardPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/StartpageCardPackage;->startpage_sub_card_list:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/StartpageCardPackage;->startpage_sub_card_list:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/StartpageCardPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

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

    .line 65
    iget v0, p0, Lcom/wandoujia/logv3/model/packages/StartpageCardPackage;->hashCode:I

    .line 66
    if-nez v0, :cond_1

    .line 67
    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/StartpageCardPackage;->startpage_card_feed_name:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/StartpageCardPackage;->startpage_card_feed_name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 68
    :goto_0
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/StartpageCardPackage;->startpage_card_template:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/StartpageCardPackage;->startpage_card_template:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    .line 69
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/StartpageCardPackage;->startpage_card_id:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/StartpageCardPackage;->startpage_card_id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    .line 70
    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/StartpageCardPackage;->startpage_sub_card_list:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/wandoujia/logv3/model/packages/StartpageCardPackage;->startpage_sub_card_list:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 71
    iput v0, p0, Lcom/wandoujia/logv3/model/packages/StartpageCardPackage;->hashCode:I

    .line 73
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 67
    goto :goto_0

    :cond_3
    move v0, v1

    .line 68
    goto :goto_1

    :cond_4
    move v0, v1

    .line 69
    goto :goto_2
.end method
