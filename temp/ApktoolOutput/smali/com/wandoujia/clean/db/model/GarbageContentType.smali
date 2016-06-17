.class public Lcom/wandoujia/clean/db/model/GarbageContentType;
.super Ljava/lang/Object;
.source "GarbageContentType.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final ADVICE_LEVEL_RECOMMEND:I = 0x0

.field public static final ADVICE_LEVEL_UNRECOMMEND:I = 0x1

.field private static final serialVersionUID:J = 0x22ac4defc057637cL


# instance fields
.field public adviceLevel:I

.field public alertInfo:Ljava/lang/String;

.field public desc:Ljava/lang/String;

.field public id:I

.field public labelId:I

.field public orderType:I

.field public rank:I

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
