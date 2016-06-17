.class public final enum Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$State;
.super Ljava/lang/Enum;
.source "PlayExpLogBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$State;

.field public static final enum FAILED:Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$State;

.field public static final enum SUCCESS:Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$State;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 174
    new-instance v0, Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$State;

    const-string v1, "SUCCESS"

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$State;->SUCCESS:Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$State;

    .line 175
    new-instance v0, Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$State;

    const-string v1, "FAILED"

    invoke-direct {v0, v1, v3}, Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$State;->FAILED:Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$State;

    .line 173
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$State;

    sget-object v1, Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$State;->SUCCESS:Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$State;->FAILED:Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$State;

    aput-object v1, v0, v3

    sput-object v0, Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$State;->$VALUES:[Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$State;

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
    .line 173
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$State;
    .locals 1
    .parameter

    .prologue
    .line 173
    const-class v0, Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$State;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$State;
    .locals 1

    .prologue
    .line 173
    sget-object v0, Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$State;->$VALUES:[Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$State;

    invoke-virtual {v0}, [Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$State;

    return-object v0
.end method
