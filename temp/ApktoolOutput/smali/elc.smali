.class public final Lelc;
.super Ljava/lang/Object;
.source "SearchCardModel.java"

# interfaces
.implements Lcom/wandoujia/mvc/BaseModel;


# instance fields
.field public a:Lcom/wandoujia/entities/app/AppLiteInfo;


# direct methods
.method public constructor <init>(Lcom/wandoujia/entities/app/AppLiteInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lelc;->a:Lcom/wandoujia/entities/app/AppLiteInfo;

    .line 21
    return-void
.end method


# virtual methods
.method public final a()Leiu;
    .locals 2

    .prologue
    .line 40
    new-instance v0, Leiv;

    iget-object v1, p0, Lelc;->a:Lcom/wandoujia/entities/app/AppLiteInfo;

    invoke-direct {v0, v1}, Leiv;-><init>(Lcom/wandoujia/entities/app/IAppLiteInfo;)V

    return-object v0
.end method
