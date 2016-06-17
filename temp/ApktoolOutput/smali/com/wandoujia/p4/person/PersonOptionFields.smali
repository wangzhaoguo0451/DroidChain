.class public final enum Lcom/wandoujia/p4/person/PersonOptionFields;
.super Ljava/lang/Enum;
.source "PersonOptionFields.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/p4/person/PersonOptionFields;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/p4/person/PersonOptionFields;

.field public static final enum GRAPH_PERSON_BY_VID_API_PERSON_VIDEO_DETAIL:Lcom/wandoujia/p4/person/PersonOptionFields;

.field public static final enum PERSON_DETAIL_API_PERSON_DETAIL_LITE:Lcom/wandoujia/p4/person/PersonOptionFields;


# instance fields
.field private optionFields:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 10
    new-instance v0, Lcom/wandoujia/p4/person/PersonOptionFields;

    const-string v1, "PERSON_DETAIL_API_PERSON_DETAIL_LITE"

    const-string v2, "birthDate,birthPlace,id,jobs,name,introduction,productCount.*,options.*,cover.*,albums.*"

    invoke-direct {v0, v1, v3, v2}, Lcom/wandoujia/p4/person/PersonOptionFields;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/p4/person/PersonOptionFields;->PERSON_DETAIL_API_PERSON_DETAIL_LITE:Lcom/wandoujia/p4/person/PersonOptionFields;

    .line 12
    new-instance v0, Lcom/wandoujia/p4/person/PersonOptionFields;

    const-string v1, "GRAPH_PERSON_BY_VID_API_PERSON_VIDEO_DETAIL"

    const-string v2, "label,item.cover.*,item.id,item.jobs,item.name"

    invoke-direct {v0, v1, v4, v2}, Lcom/wandoujia/p4/person/PersonOptionFields;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/p4/person/PersonOptionFields;->GRAPH_PERSON_BY_VID_API_PERSON_VIDEO_DETAIL:Lcom/wandoujia/p4/person/PersonOptionFields;

    .line 8
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/wandoujia/p4/person/PersonOptionFields;

    sget-object v1, Lcom/wandoujia/p4/person/PersonOptionFields;->PERSON_DETAIL_API_PERSON_DETAIL_LITE:Lcom/wandoujia/p4/person/PersonOptionFields;

    aput-object v1, v0, v3

    sget-object v1, Lcom/wandoujia/p4/person/PersonOptionFields;->GRAPH_PERSON_BY_VID_API_PERSON_VIDEO_DETAIL:Lcom/wandoujia/p4/person/PersonOptionFields;

    aput-object v1, v0, v4

    sput-object v0, Lcom/wandoujia/p4/person/PersonOptionFields;->$VALUES:[Lcom/wandoujia/p4/person/PersonOptionFields;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 18
    iput-object p3, p0, Lcom/wandoujia/p4/person/PersonOptionFields;->optionFields:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/p4/person/PersonOptionFields;
    .locals 1
    .parameter

    .prologue
    .line 8
    const-class v0, Lcom/wandoujia/p4/person/PersonOptionFields;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/person/PersonOptionFields;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/p4/person/PersonOptionFields;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/wandoujia/p4/person/PersonOptionFields;->$VALUES:[Lcom/wandoujia/p4/person/PersonOptionFields;

    invoke-virtual {v0}, [Lcom/wandoujia/p4/person/PersonOptionFields;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/p4/person/PersonOptionFields;

    return-object v0
.end method


# virtual methods
.method public final getOptionFields()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/wandoujia/p4/person/PersonOptionFields;->optionFields:Ljava/lang/String;

    return-object v0
.end method
