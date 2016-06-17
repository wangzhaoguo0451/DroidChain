.class public final enum Lcom/facebook/drawee/components/DraweeEventTracker$Event;
.super Ljava/lang/Enum;
.source "DraweeEventTracker.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/drawee/components/DraweeEventTracker$Event;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/drawee/components/DraweeEventTracker$Event;

.field public static final enum ON_ACTIVITY_START:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

.field public static final enum ON_ACTIVITY_STOP:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

.field public static final enum ON_ATTACH_CONTROLLER:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

.field public static final enum ON_CLEAR_CONTROLLER:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

.field public static final enum ON_CLEAR_HIERARCHY:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

.field public static final enum ON_CLEAR_OLD_CONTROLLER:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

.field public static final enum ON_DATASOURCE_FAILURE:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

.field public static final enum ON_DATASOURCE_FAILURE_INT:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

.field public static final enum ON_DATASOURCE_RESULT:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

.field public static final enum ON_DATASOURCE_RESULT_INT:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

.field public static final enum ON_DATASOURCE_SUBMIT:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

.field public static final enum ON_DETACH_CONTROLLER:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

.field public static final enum ON_DRAWABLE_HIDE:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

.field public static final enum ON_DRAWABLE_SHOW:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

.field public static final enum ON_HOLDER_ATTACH:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

.field public static final enum ON_HOLDER_DETACH:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

.field public static final enum ON_INIT_CONTROLLER:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

.field public static final enum ON_RELEASE_CONTROLLER:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

.field public static final enum ON_SET_CONTROLLER:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

.field public static final enum ON_SET_HIERARCHY:Lcom/facebook/drawee/components/DraweeEventTracker$Event;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 24
    new-instance v0, Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    const-string v1, "ON_SET_HIERARCHY"

    invoke-direct {v0, v1, v3}, Lcom/facebook/drawee/components/DraweeEventTracker$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->ON_SET_HIERARCHY:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    .line 25
    new-instance v0, Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    const-string v1, "ON_CLEAR_HIERARCHY"

    invoke-direct {v0, v1, v4}, Lcom/facebook/drawee/components/DraweeEventTracker$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->ON_CLEAR_HIERARCHY:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    .line 26
    new-instance v0, Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    const-string v1, "ON_SET_CONTROLLER"

    invoke-direct {v0, v1, v5}, Lcom/facebook/drawee/components/DraweeEventTracker$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->ON_SET_CONTROLLER:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    .line 27
    new-instance v0, Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    const-string v1, "ON_CLEAR_OLD_CONTROLLER"

    invoke-direct {v0, v1, v6}, Lcom/facebook/drawee/components/DraweeEventTracker$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->ON_CLEAR_OLD_CONTROLLER:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    .line 28
    new-instance v0, Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    const-string v1, "ON_CLEAR_CONTROLLER"

    invoke-direct {v0, v1, v7}, Lcom/facebook/drawee/components/DraweeEventTracker$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->ON_CLEAR_CONTROLLER:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    .line 29
    new-instance v0, Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    const-string v1, "ON_INIT_CONTROLLER"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/facebook/drawee/components/DraweeEventTracker$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->ON_INIT_CONTROLLER:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    .line 30
    new-instance v0, Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    const-string v1, "ON_ATTACH_CONTROLLER"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/facebook/drawee/components/DraweeEventTracker$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->ON_ATTACH_CONTROLLER:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    .line 31
    new-instance v0, Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    const-string v1, "ON_DETACH_CONTROLLER"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/facebook/drawee/components/DraweeEventTracker$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->ON_DETACH_CONTROLLER:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    .line 32
    new-instance v0, Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    const-string v1, "ON_RELEASE_CONTROLLER"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/facebook/drawee/components/DraweeEventTracker$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->ON_RELEASE_CONTROLLER:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    .line 33
    new-instance v0, Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    const-string v1, "ON_DATASOURCE_SUBMIT"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/facebook/drawee/components/DraweeEventTracker$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->ON_DATASOURCE_SUBMIT:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    .line 34
    new-instance v0, Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    const-string v1, "ON_DATASOURCE_RESULT"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/facebook/drawee/components/DraweeEventTracker$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->ON_DATASOURCE_RESULT:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    .line 35
    new-instance v0, Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    const-string v1, "ON_DATASOURCE_RESULT_INT"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/facebook/drawee/components/DraweeEventTracker$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->ON_DATASOURCE_RESULT_INT:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    .line 36
    new-instance v0, Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    const-string v1, "ON_DATASOURCE_FAILURE"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/facebook/drawee/components/DraweeEventTracker$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->ON_DATASOURCE_FAILURE:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    .line 37
    new-instance v0, Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    const-string v1, "ON_DATASOURCE_FAILURE_INT"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/facebook/drawee/components/DraweeEventTracker$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->ON_DATASOURCE_FAILURE_INT:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    .line 38
    new-instance v0, Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    const-string v1, "ON_HOLDER_ATTACH"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/facebook/drawee/components/DraweeEventTracker$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->ON_HOLDER_ATTACH:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    .line 39
    new-instance v0, Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    const-string v1, "ON_HOLDER_DETACH"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/facebook/drawee/components/DraweeEventTracker$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->ON_HOLDER_DETACH:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    .line 40
    new-instance v0, Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    const-string v1, "ON_DRAWABLE_SHOW"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/facebook/drawee/components/DraweeEventTracker$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->ON_DRAWABLE_SHOW:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    .line 41
    new-instance v0, Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    const-string v1, "ON_DRAWABLE_HIDE"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/facebook/drawee/components/DraweeEventTracker$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->ON_DRAWABLE_HIDE:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    .line 42
    new-instance v0, Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    const-string v1, "ON_ACTIVITY_START"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/facebook/drawee/components/DraweeEventTracker$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->ON_ACTIVITY_START:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    .line 43
    new-instance v0, Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    const-string v1, "ON_ACTIVITY_STOP"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/facebook/drawee/components/DraweeEventTracker$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->ON_ACTIVITY_STOP:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    .line 23
    const/16 v0, 0x14

    new-array v0, v0, [Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    sget-object v1, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->ON_SET_HIERARCHY:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->ON_CLEAR_HIERARCHY:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->ON_SET_CONTROLLER:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    aput-object v1, v0, v5

    sget-object v1, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->ON_CLEAR_OLD_CONTROLLER:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    aput-object v1, v0, v6

    sget-object v1, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->ON_CLEAR_CONTROLLER:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->ON_INIT_CONTROLLER:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->ON_ATTACH_CONTROLLER:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->ON_DETACH_CONTROLLER:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->ON_RELEASE_CONTROLLER:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->ON_DATASOURCE_SUBMIT:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->ON_DATASOURCE_RESULT:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->ON_DATASOURCE_RESULT_INT:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->ON_DATASOURCE_FAILURE:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->ON_DATASOURCE_FAILURE_INT:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->ON_HOLDER_ATTACH:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->ON_HOLDER_DETACH:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->ON_DRAWABLE_SHOW:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->ON_DRAWABLE_HIDE:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->ON_ACTIVITY_START:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->ON_ACTIVITY_STOP:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    aput-object v2, v0, v1

    sput-object v0, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->$VALUES:[Lcom/facebook/drawee/components/DraweeEventTracker$Event;

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
    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/drawee/components/DraweeEventTracker$Event;
    .locals 1
    .parameter

    .prologue
    .line 23
    const-class v0, Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    return-object v0
.end method

.method public static values()[Lcom/facebook/drawee/components/DraweeEventTracker$Event;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->$VALUES:[Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    invoke-virtual {v0}, [Lcom/facebook/drawee/components/DraweeEventTracker$Event;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    return-object v0
.end method
