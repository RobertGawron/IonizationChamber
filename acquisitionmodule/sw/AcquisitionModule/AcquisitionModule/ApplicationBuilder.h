/*
* ApplicationBuilder.h
*
* Created: 25.09.2018 14:13:53
* Author: robert
*/


#ifndef __APPLICATIONBUILDER_H__
#define __APPLICATIONBUILDER_H__


class ApplicationBuilder
{
public:
    ApplicationBuilder();
    ~ApplicationBuilder();
    ApplicationBuilder( const ApplicationBuilder &c ) = delete;
    ApplicationBuilder& operator=( const ApplicationBuilder &c ) = delete;

    bool init();
protected:
private:


};

#endif //__APPLICATIONBUILDER_H__
