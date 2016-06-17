.class public final enum Lcom/wandoujia/entities/game/StoryParagraph$ParagraphType;
.super Ljava/lang/Enum;
.source "StoryParagraph.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/entities/game/StoryParagraph$ParagraphType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/entities/game/StoryParagraph$ParagraphType;

.field public static final enum IMAGE:Lcom/wandoujia/entities/game/StoryParagraph$ParagraphType;
    .annotation runtime Lcwj;
        a = "image"
    .end annotation
.end field

.field public static final enum QUOTE:Lcom/wandoujia/entities/game/StoryParagraph$ParagraphType;
    .annotation runtime Lcwj;
        a = "quote"
    .end annotation
.end field

.field public static final enum SPACE:Lcom/wandoujia/entities/game/StoryParagraph$ParagraphType;
    .annotation runtime Lcwj;
        a = "space"
    .end annotation
.end field

.field public static final enum TEXT:Lcom/wandoujia/entities/game/StoryParagraph$ParagraphType;
    .annotation runtime Lcwj;
        a = "text"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 15
    new-instance v0, Lcom/wandoujia/entities/game/StoryParagraph$ParagraphType;

    const-string v1, "TEXT"

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/entities/game/StoryParagraph$ParagraphType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/entities/game/StoryParagraph$ParagraphType;->TEXT:Lcom/wandoujia/entities/game/StoryParagraph$ParagraphType;

    .line 17
    new-instance v0, Lcom/wandoujia/entities/game/StoryParagraph$ParagraphType;

    const-string v1, "IMAGE"

    invoke-direct {v0, v1, v3}, Lcom/wandoujia/entities/game/StoryParagraph$ParagraphType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/entities/game/StoryParagraph$ParagraphType;->IMAGE:Lcom/wandoujia/entities/game/StoryParagraph$ParagraphType;

    .line 19
    new-instance v0, Lcom/wandoujia/entities/game/StoryParagraph$ParagraphType;

    const-string v1, "QUOTE"

    invoke-direct {v0, v1, v4}, Lcom/wandoujia/entities/game/StoryParagraph$ParagraphType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/entities/game/StoryParagraph$ParagraphType;->QUOTE:Lcom/wandoujia/entities/game/StoryParagraph$ParagraphType;

    .line 21
    new-instance v0, Lcom/wandoujia/entities/game/StoryParagraph$ParagraphType;

    const-string v1, "SPACE"

    invoke-direct {v0, v1, v5}, Lcom/wandoujia/entities/game/StoryParagraph$ParagraphType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/entities/game/StoryParagraph$ParagraphType;->SPACE:Lcom/wandoujia/entities/game/StoryParagraph$ParagraphType;

    .line 14
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/wandoujia/entities/game/StoryParagraph$ParagraphType;

    sget-object v1, Lcom/wandoujia/entities/game/StoryParagraph$ParagraphType;->TEXT:Lcom/wandoujia/entities/game/StoryParagraph$ParagraphType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/wandoujia/entities/game/StoryParagraph$ParagraphType;->IMAGE:Lcom/wandoujia/entities/game/StoryParagraph$ParagraphType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/wandoujia/entities/game/StoryParagraph$ParagraphType;->QUOTE:Lcom/wandoujia/entities/game/StoryParagraph$ParagraphType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/wandoujia/entities/game/StoryParagraph$ParagraphType;->SPACE:Lcom/wandoujia/entities/game/StoryParagraph$ParagraphType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/wandoujia/entities/game/StoryParagraph$ParagraphType;->$VALUES:[Lcom/wandoujia/entities/game/StoryParagraph$ParagraphType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/entities/game/StoryParagraph$ParagraphType;
    .locals 1
    .parameter

    .prologue
    .line 14
    const-class v0, Lcom/wandoujia/entities/game/StoryParagraph$ParagraphType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/entities/game/StoryParagraph$ParagraphType;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/entities/game/StoryParagraph$ParagraphType;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/wandoujia/entities/game/StoryParagraph$ParagraphType;->$VALUES:[Lcom/wandoujia/entities/game/StoryParagraph$ParagraphType;

    invoke-virtual {v0}, [Lcom/wandoujia/entities/game/StoryParagraph$ParagraphType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/entities/game/StoryParagraph$ParagraphType;

    return-object v0
.end method
