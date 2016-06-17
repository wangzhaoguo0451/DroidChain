.class public final Lfuj;
.super Ljava/lang/Object;
.source "ShowGiftPopUpViewAction.java"

# interfaces
.implements Lcom/wandoujia/mvc/Action;


# instance fields
.field private final a:Lcom/wandoujia/p4/gift/http/model/GiftModel;

.field private final b:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/gift/http/model/GiftModel;Landroid/app/Activity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lfuj;->a:Lcom/wandoujia/p4/gift/http/model/GiftModel;

    .line 19
    iput-object p2, p0, Lfuj;->b:Landroid/app/Activity;

    .line 20
    return-void
.end method


# virtual methods
.method public final execute()V
    .locals 2

    .prologue
    .line 24
    iget-object v0, p0, Lfuj;->a:Lcom/wandoujia/p4/gift/http/model/GiftModel;

    iget-object v1, p0, Lfuj;->b:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/wandoujia/p4/gift/views/GiftDetailPopUpCardView;->a(Lcom/wandoujia/p4/gift/http/model/GiftModel;Landroid/app/Activity;)V

    .line 25
    return-void
.end method
