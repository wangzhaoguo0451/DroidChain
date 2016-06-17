.class public abstract Lcom/wandoujia/jupiter/notification/notifycard/view/NotifyCardView;
.super Landroid/widget/RelativeLayout;
.source "NotifyCardView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    sget-object v0, Lcom/wandoujia/jupiter/notification/notifycard/generator/INotifyCardGenerator$EntryType;->OTHER:Lcom/wandoujia/jupiter/notification/notifycard/generator/INotifyCardGenerator$EntryType;

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 15
    sget-object v0, Lcom/wandoujia/jupiter/notification/notifycard/generator/INotifyCardGenerator$EntryType;->OTHER:Lcom/wandoujia/jupiter/notification/notifycard/generator/INotifyCardGenerator$EntryType;

    .line 27
    return-void
.end method


# virtual methods
.method public setEntryType(Lcom/wandoujia/jupiter/notification/notifycard/generator/INotifyCardGenerator$EntryType;)V
    .locals 0
    .parameter

    .prologue
    .line 40
    return-void
.end method

.method public setOnHandledListener$4de7cafc(Lr;)V
    .locals 0
    .parameter

    .prologue
    .line 30
    return-void
.end method
