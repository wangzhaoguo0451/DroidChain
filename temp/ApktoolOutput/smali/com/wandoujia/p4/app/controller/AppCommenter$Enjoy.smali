.class public final enum Lcom/wandoujia/p4/app/controller/AppCommenter$Enjoy;
.super Ljava/lang/Enum;
.source "AppCommenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/p4/app/controller/AppCommenter$Enjoy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/p4/app/controller/AppCommenter$Enjoy;

.field public static final enum NO:Lcom/wandoujia/p4/app/controller/AppCommenter$Enjoy;

.field public static final enum UNKNOWN:Lcom/wandoujia/p4/app/controller/AppCommenter$Enjoy;

.field public static final enum YES:Lcom/wandoujia/p4/app/controller/AppCommenter$Enjoy;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 29
    new-instance v0, Lcom/wandoujia/p4/app/controller/AppCommenter$Enjoy;

    const-string v1, "YES"

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/p4/app/controller/AppCommenter$Enjoy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/app/controller/AppCommenter$Enjoy;->YES:Lcom/wandoujia/p4/app/controller/AppCommenter$Enjoy;

    new-instance v0, Lcom/wandoujia/p4/app/controller/AppCommenter$Enjoy;

    const-string v1, "NO"

    invoke-direct {v0, v1, v3}, Lcom/wandoujia/p4/app/controller/AppCommenter$Enjoy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/app/controller/AppCommenter$Enjoy;->NO:Lcom/wandoujia/p4/app/controller/AppCommenter$Enjoy;

    new-instance v0, Lcom/wandoujia/p4/app/controller/AppCommenter$Enjoy;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v4}, Lcom/wandoujia/p4/app/controller/AppCommenter$Enjoy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/app/controller/AppCommenter$Enjoy;->UNKNOWN:Lcom/wandoujia/p4/app/controller/AppCommenter$Enjoy;

    .line 28
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/wandoujia/p4/app/controller/AppCommenter$Enjoy;

    sget-object v1, Lcom/wandoujia/p4/app/controller/AppCommenter$Enjoy;->YES:Lcom/wandoujia/p4/app/controller/AppCommenter$Enjoy;

    aput-object v1, v0, v2

    sget-object v1, Lcom/wandoujia/p4/app/controller/AppCommenter$Enjoy;->NO:Lcom/wandoujia/p4/app/controller/AppCommenter$Enjoy;

    aput-object v1, v0, v3

    sget-object v1, Lcom/wandoujia/p4/app/controller/AppCommenter$Enjoy;->UNKNOWN:Lcom/wandoujia/p4/app/controller/AppCommenter$Enjoy;

    aput-object v1, v0, v4

    sput-object v0, Lcom/wandoujia/p4/app/controller/AppCommenter$Enjoy;->$VALUES:[Lcom/wandoujia/p4/app/controller/AppCommenter$Enjoy;

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
    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/p4/app/controller/AppCommenter$Enjoy;
    .locals 1
    .parameter

    .prologue
    .line 28
    const-class v0, Lcom/wandoujia/p4/app/controller/AppCommenter$Enjoy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/app/controller/AppCommenter$Enjoy;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/p4/app/controller/AppCommenter$Enjoy;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/wandoujia/p4/app/controller/AppCommenter$Enjoy;->$VALUES:[Lcom/wandoujia/p4/app/controller/AppCommenter$Enjoy;

    invoke-virtual {v0}, [Lcom/wandoujia/p4/app/controller/AppCommenter$Enjoy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/p4/app/controller/AppCommenter$Enjoy;

    return-object v0
.end method
